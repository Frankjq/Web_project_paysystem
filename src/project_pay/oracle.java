package project_pay;
import java.sql.*;

public class oracle {
	public static void main(String agrs[]){
	
 
	try {
        
		Class.forName("oracle.jdbc.driver.OracleDriver");// ��̬����mysql����
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:projetpay";    
	    String theUser = "accountant";    
	    String thePw = "1994"; 

        System.out.println("�ɹ�����MySQL��������");
        // һ��Connection����һ�����ݿ�����
        Connection con=DriverManager.getConnection(dbUrl ,theUser,thePw);
        
        PreparedStatement ps=con.prepareStatement("INSERT INTO QUERY  VALUES (?, ?)");
        ps.setString(1,"as");
        ps.setString(2,"saf");
        ps.executeUpdate();
        // Statement������кܶ෽��������executeUpdate�����ֲ��룬���º�ɾ����
//        Statement stmt = con.createStatement();
//        sql = "create table student(NO char(20),name varchar(20),primary key(NO))";
////        int result = stmt.executeUpdate(sql);// executeUpdate���᷵��һ����Ӱ����������������-1��û�гɹ�
////        if (result != -1) {
////            System.out.println("�������ݱ�ɹ�");
////            sql = "insert into student(NO,name) values('2012001','��ΰ��')";
////            result = stmt.executeUpdate(sql);
//            sql = "insert into student(NO,name) values('2012002','��С��')";
//            result = stmt.executeUpdate(sql);
//            sql = "select * from student";
//            ResultSet rs = stmt.executeQuery(sql);// executeQuery�᷵�ؽ���ļ��ϣ����򷵻ؿ�ֵ
//            System.out.println("ѧ��\t����");
//            while (rs.next()) {
//                System.out
//                        .println(rs.getString(1) + "\t" + rs.getString(2));// ��������ص���int���Ϳ�����getInt()
//            }
//        }
    } catch (SQLException e1) {
        System.out.println("MySQL��������");
        e1.printStackTrace();
    } catch (Exception e2) {
        e2.printStackTrace();
    } 
    }
	
}

