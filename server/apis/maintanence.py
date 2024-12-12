from flask import Blueprint, request

import utility
import json

from flask_jwt_extended import get_jwt, get_jwt_identity, jwt_required

from database import getdb
from constant import valid_status
from datetime import datetime

maintanence_api = Blueprint("maintanence_api", __name__)

@maintanence_api.route("/", methods=["PUT"])
@jwt_required(locations="cookies")
def create_maintanence():
    try:
        body = utility.convertBody(
            json.loads(request.data.decode("UTF-8")),
            {
                "airline_name": "airline_name",
                "airplane_ID": "airplane_id",
                "start_date_time": "start_date_time",
                "end_date_time": "end_date_time",
            },
            auto_date=True,
        )
    except:
        return {"msg": "invalid field"}, 422

    if body == False:
        return {"msg": "missing field"}, 422

    mydb = getdb()
    cursor = mydb.cursor()
    print(get_jwt_identity())
    print(get_jwt().get("username"))
    if get_jwt_identity() != "staff":
        return {"msg": "staff only"}, 403

    if utility.getStaff(cursor, get_jwt().get("username"), "airline_name")[0] != body["airline_name"]:
        return {"msg": "airline staff is not authorized to get other airline's information "}, 403
    try:
        cursor.execute(
            """
                INSERT INTO maintanence
                    VALUES (%(airline_name)s, %(airplane_id)s, %(start_date_time)s, %(end__date_time)s);
            """,
            body,
        )
    except:
        cursor.close()
        mydb.close()
        return {"msg": "invalid field"}, 409

    mydb.commit()
    cursor.close()
    mydb.close()

    return {"msg": "success"}, 201