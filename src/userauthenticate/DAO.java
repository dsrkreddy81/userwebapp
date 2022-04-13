package userauthenticate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	public int register(Bean b) throws ClassNotFoundException, SQLException {
		Connection con=DB.DB();
		PreparedStatement ps2=con.prepareStatement("use userwebapp");
		PreparedStatement ps0=con.prepareStatement("create table register(username varchar(20),password varchar(20))");
		PreparedStatement ps=con.prepareStatement("insert into register values(?,?)");
		ps.setString(1, b.getUsername());
		ps.setString(2, b.getPassword());
		int i=ps.executeUpdate();
		return i;
	}
	public boolean login(String username,String password) throws SQLException, ClassNotFoundException {
		Connection con=DB.DB();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			if(rs.getString(1).equals(username) && rs.getString(2).equals(password)) {
				return true;
			}
		}
		return false;
	}
	public ResultSet display() throws ClassNotFoundException, SQLException {
		Connection con=DB.DB();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		return rs;
	}
	public int password(Bean b,String username,String password) throws ClassNotFoundException, SQLException {
		Connection con=DB.DB();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			if(rs.getString(1).equals(username)) {
				PreparedStatement ps1=con.prepareStatement("update register set password=?");
				ps1.setString(1, b.getPassword());
				int i=ps1.executeUpdate();
				return i;
			}
		}
		return 0;
	}
}
