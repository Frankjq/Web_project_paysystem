package project_pay;
import java.sql.*;

public class oracle {
	public static void main(String agrs[]){
	
 
	try {
        
		Class.forName("oracle.jdbc.driver.OracleDriver");// 动态加载mysql驱动
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:projetpay";    
	    String theUser = "accountant";    
	    String thePw = "1994"; 

        System.out.println("成功加载MySQL驱动程序");
        // 一个Connection代表一个数据库连接
        Connection con=DriverManager.getConnection(dbUrl ,theUser,thePw);
        
        PreparedStatement ps=con.prepareStatement("INSERT INTO QUERY  VALUES (?, ?)");
        ps.setString(1,"as");
        ps.setString(2,"saf");
        ps.executeUpdate();
        // Statement里面带有很多方法，比如executeUpdate可以现插入，更新和删除等
//        Statement stmt = con.createStatement();
//        sql = "create table student(NO char(20),name varchar(20),primary key(NO))";
////        int result = stmt.executeUpdate(sql);// executeUpdate语句会返回一个受影响的行数，如果返回-1就没有成功
////        if (result != -1) {
////            System.out.println("创建数据表成功");
////            sql = "insert into student(NO,name) values('2012001','陶伟基')";
////            result = stmt.executeUpdate(sql);
//            sql = "insert into student(NO,name) values('2012002','周小俊')";
//            result = stmt.executeUpdate(sql);
//            sql = "select * from student";
//            ResultSet rs = stmt.executeQuery(sql);// executeQuery会返回结果的集合，否则返回空值
//            System.out.println("学号\t姓名");
//            while (rs.next()) {
//                System.out
//                        .println(rs.getString(1) + "\t" + rs.getString(2));// 入如果返回的是int类型可以用getInt()
//            }
//        }
    } catch (SQLException e1) {
        System.out.println("MySQL操作错误");
        e1.printStackTrace();
    } catch (Exception e2) {
        e2.printStackTrace();
    } 
    }
	
}

