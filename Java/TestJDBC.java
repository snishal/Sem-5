import java.sql.*;

class JDBC{

	String db_url = "jdbc:mysql://localhost";
	String db_user = "";
	String db_pass = "";
	Connection conn = null;	
	
	JDBC(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = Driver.getConnection(db_url, db_user, db_pass);
		}catch(SQLException e){
			System.out.println(e.toString());
		}
	}

	void mk_conn(){
		
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = Driver.getConnection(db_url, db_user, db_pass);
	
	}

	void num_students(){
	
	}
	
	void avg_marks_subject(){
	
	}
	
	void highest_marks(){
	
	}
	
	void std_division(){
	
	}

	void avg_marks(){
	
	}
	
	void subject_topper(){
	
	}
	
	void second_topper(){
	
	}
	
	void close_conn(){	
	
		conn.close();
	
	}

}

class TestJDBC{

	public static void main(String args[]){
		
	}

}
