import styles from "./Footer.module.scss";
import { Github } from "./UI/Icons";

const Footer = () => {
    return (
        <footer className={styles.footer}>
            <section className={styles.course}>
                <h1>CS-UY 3083 Intro to Database</h1>
                <span>Section A</span>
            </section>
        </footer>
    );
};

export default Footer;
