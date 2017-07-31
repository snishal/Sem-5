import java.util.ArrayList;
abstract class Stack{
	
	abstract void push(int val);
	abstract int pop();
	abstract void display();
}

class StaticStack extends Stack{

	final int capacity;
	int size;
	int[] array;
	
	StaticStack(int c){
	
		this.capacity = c;
		this.size = 0;
		array = new int[capacity];
	}
	
	void push(int val){
	
		if(size == capacity){
		
			System.out.println("Stack Overflow");
		
		}else{
		
			array[size++] = val;
		}
	
	}
	
	int pop(){
	
		int p = -1;
		if(size == 0){
		
			System.out.println("Stack Underflow");
		
		}else{
			
			size--;
			p = array[size]; 
		
		}
		
		return p;
	
	}
	
	void display(){
	
		System.out.print("Stack is : ");
		for(int i = 0; i < size; i++){
			
			System.out.print(array[i]);
			
		}
		System.out.println();
	}

}

class DynamicStack extends Stack{

	ArrayList<Integer> array;
	
	DynamicStack(){
		
		array = new ArrayList<Integer>();
	
	}
	
	void push(int val){
	
		array.add(val);
	}
	
	int pop(){
		
		int p = -1;
		if(array.size() == 0){
		
			System.out.println("Stack Empty");
		
		}else{
		
			p = array.remove(array.size()-1); 
		
		}
		
		return p;
		
	}
	
	void display(){

		System.out.print("Stack is : ");
		for(int a : array){
			System.out.print(a + " ");
		}
		System.out.println();
	}

}

public class TestStack{

	public static void main(String args[]){
	
		StaticStack s = new StaticStack(1);
		s.push(1);
		s.display();
		s.pop();
		
		DynamicStack d = new DynamicStack();
		d.push(1);
		d.push(2);
		d.display();
		//d.pop();
	
	}

}
