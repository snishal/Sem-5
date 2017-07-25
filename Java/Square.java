import java.util.Scanner;

class Rectangle{

	int x,y;
	int height, width;

	Rectangle(){
		
		this.x = 0;
		this.y = 0;
		this.height = 0;
		this.width = 0;

	}
	
	void setLocation(int x, int y){

		this.x = x;
		this.y = y;		

	}

	void setSize(int height, int width){

		this.height = height;
		this.width = width;

	}

	int getArea(){
	
		return height*width;

	}

}

public class Square extends Rectangle{
	
		
	Square(int x, int y, int side){
		
		super();
		setSize(side, side);
		setLocation(x, y);

	}

	int getArea(){

		return super.getArea();

	}

	public static void main(String args[]){

		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter the x_co-ordinate of center : ");
		int x = sc.nextInt();

		System.out.print("Enter the y_co-ordinate of center : ");
		int y = sc.nextInt();

		System.out.print("Enter the length of the square : ");
		int side = sc.nextInt();
		
		Square s = new Square(x, y, side);

		int area = s.getArea();
		System.out.println("Area of the square is : "+area+" unit sq.");
		
		
	}

}
