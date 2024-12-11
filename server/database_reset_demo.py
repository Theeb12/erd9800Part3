from database import mydb_raw
import re
import sys
import mysql.connector


def main():
    cursor = mydb_raw.cursor()

    cursor.execute(
        """CREATE DATABASE
                        IF NOT EXISTS
                        air_ticket_reservation""",
        multi=True,
    )

    cursor.execute("USE air_ticket_reservation", multi=True)

    #clear existing table
    #create tables
    executeSQLFile(cursor, "./database_init/clear.sql")  
    executeSQLFile(cursor, "./database_init/DDL.sql")  

    mydb_raw.commit()

    executeSQLFile(cursor, "./database_init/demo_inserts/inserts.sql")

    mydb_raw.commit()

    cursor.close()
    mydb_raw.close()


def executeSQLFile(cursor, filename):
    ignorestatement = False 
    statement = ""

    for line in open(filename):
        if line.startswith("DELIMITER"):
            if not ignorestatement:
                ignorestatement = True 
                continue
            else:
                # if theres a semilcolon, allow the execution of sql queries
                ignorestatement = False  
                line = " ;" 
        # ignore comment lines
        if re.match(r"--", line):  
            continue
        if (
            not re.search(r"[^-;]+;", line) or ignorestatement
        ):  # keep appending lines that don't end in ';' or DELIMITER has been called
            statement = statement + line
        else:  # when you get a line ending in ';' then exec statement and reset for next statement providing the DELIMITER hasn't been set
            statement = statement + line
            try:
                cursor.execute(statement)
                statement = ""
            except mysql.connector.Error as e:
                print(filename + " - Error applying (" + str(e) + ")\nTerminating.")
                sys.exit(1)


if __name__ == "__main__":
    main()
