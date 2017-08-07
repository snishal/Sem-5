//STEP 1. Import required packages
import java.sql.*;

public class CallJDBC {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/Student_Result";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //CREATE PROCEDURE GetCount(OUT x int) BEGIN SELECT count(*) into x FROM Student; END 
      
      String query = "{ CALL GetCount(?) }";
      
      CallableStatement cs = conn.prepareCall(query);
      cs.registerOutParameter(1, Types.INTEGER);
      cs.execute();
      
      int val = cs.getInt(1);
		
		System.out.println("Number of Students : " + val);
		
      //STEP 6: Clean-up environment
      cs.close();
      conn.close();
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }// nothing we can do
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
}//end main
}//end FirstExample
