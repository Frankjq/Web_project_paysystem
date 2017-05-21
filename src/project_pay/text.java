package project_pay;
import java.sql.*;

public class text {
public static void main(String[] args) {
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM register");
while(rs.next()){
System.out.println(rs.getInt(1) + "\t" + rs.getString(2));
}
}catch(Exception err){
System.out.println(err.toString());
}
}
}