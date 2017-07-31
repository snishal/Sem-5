import java.util.Scanner;

class Person{
	
	String name;
	int yob;
	
	Person(String name, int yob){
		
		this.name = name;
		this.yob = yob;

	}

	String to_string(){
	
		return name + " : " + yob;		

	}

}

class Student extends Person{

	String major;
	
	Student(String name, int yob, String major){
	
		super(name, yob);
		
		this.major = major;
		
	}

	String to_string(){

		String str = super.to_string();

		return str + " : " + major;

	}

}

class Instructor extends Person{

	int salary;

	Instructor(String name, int yob, int salary){

		super(name, yob);
		
		this.salary = salary;

	}
	
	String to_string(){

		String str = super.to_string();

		return str + " : " + salary;

	}

}

public class Test{

	public static void main(String args[]){
		
		Scanner sc = new Scanner(System.in);
		
		String name;
		int yob;
		String major;
		int salary;
	
		System.out.print("Name of Student : ");
		name = sc.next();

		System.out.print("Year of Birth of Student : ");
		yob = sc.nextInt();

		System.out.print("Major of Student : ");
		major = sc.next();		

		Student std = new Student(name, yob, major);
		System.out.println("Student Details : " + std.to_string());

		System.out.print("Name of Instructor : ");
		name = sc.next();

		System.out.print("Year of Birth of Instructor : ");
		yob = sc.nextInt();

		System.out.print("Salary of Instructor : ");
		salary = sc.nextInt();
		
		Instructor inst = new Instructor(name, yob, salary);				
		System.out.println("Instructor Details : "+ inst.to_string());	
		
	}

}
