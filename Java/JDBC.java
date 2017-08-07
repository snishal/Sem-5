//STEP 1. Import required packages
import java.sql.*;

public class JDBC {
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

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      stmt = conn.createStatement();
      String sql;
      
      //Count Number of Students
      sql = "SELECT count(*) as Count from Student;";
      
      ResultSet rs = stmt.executeQuery(sql);
      
      rs.first();
      
      System.out.println("Number of Students : " + rs.getInt("Count"));
      
      //Average Marks 
      sql = "SELECT AVG(Marks) as Avg, SubName FROM Result GROUP BY SubName;";

	  rs = stmt.executeQuery(sql);
	
	//STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
         System.out.println("Subject : " + rs.getString("SubName") + "Marks : " + rs.getInt("Avg"));
      }
     
	 //Highest Marks
	 sql = "SELECT Name from Student WHERE Roll_No in (SELECT Roll_No from (SELECT Roll_No, SUM(Marks) as Marks from Result GROUP BY Roll_No) as Total WHERE Marks = (SELECT MAX(Marks) as Max_Marks from (SELECT Roll_No, SUM(Marks) as Marks from Result GROUP BY Roll_No) as Total));";

	rs = stmt.executeQuery(sql);

	//STEP 5: Extract data from result set
	
	System.out.print("Topper : ");
	
      while(rs.next()){
         //Retrieve by column name
         System.out.print(rs.getString("Name") + "\t");
      }
      
      System.out.println();
      
	//Subject Topper
	sql = 	"SELECT Roll_No, SubName from Result, (SELECT MAX(Marks) as Max_Marks, SubName as Sub from Result GROUP BY SubName) as T1 WHERE Marks = Max_Marks and Result.SubName = Sub;";

	rs = stmt.executeQuery(sql);
	
	System.out.println("Subjectwise Toppers : ");
	//STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
      		System.out.println("Roll No.  : " + rs.getInt("Roll_No") + " Subject : " + rs.getString("SubName"));
      }
      	
	//Average Student Marks
	sql = "SELECT Roll_No, AVG(Marks) as Avg from Result GROUP BY Roll_No;";

	rs = stmt.executeQuery(sql);
	//STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
         System.out.println("Roll No. : " + rs.getInt("Roll_No") + " Marks : " + rs.getInt("Avg"));
      }
      
      //2nd Topper
		sql = "SELECT Roll_No, SUM(Marks) as Total from Result GROUP BY Roll_No ORDER BY Total DESC ;";

		rs = stmt.executeQuery(sql);
		//STEP 5: Extract data from result set
		rs.first();
		rs.next();
		System.out.println("Second Topper");
      	System.out.println("Roll No. : " + rs.getInt("Roll_No") + " Marks : " + rs.getInt("Total"));
		
      //STEP 6: Clean-up environment
      rs.close();
      stmt.close();
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
