package Lahjalista.Models;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



public class Tietokanta {
    
    public static Connection getYhteys() throws URISyntaxException, SQLException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));

        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath() + "?charSet=UTF8";

        return DriverManager.getConnection(dbUrl, username, password);
}
    

    // rewrited for heroku
    /*public static Connection getYhteys() throws SQLException, NamingException {  
        InitialContext cxt = new InitialContext();
        DataSource yhteysVarasto = (DataSource)cxt.lookup("java:/comp/env/jdbc/tomikasu");
        return yhteysVarasto.getConnection(); 
    }*/
    
    
}
