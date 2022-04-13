package userauthenticate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	public static Connection DB() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://userwebapp.cm7xsc7mrban.us-east-1.rds.amazonaws.com:3306/userwebapp","userwebapp","userwebapp");
		return con;
	}
}
