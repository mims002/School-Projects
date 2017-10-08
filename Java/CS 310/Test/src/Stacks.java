import java.util.ArrayList;

public class Stacks <T> {
	T stack[]; 
	int SIZE;
	int sp;
	
	public Stacks(int size) {
		stack = (T[])new Object[size];
		SIZE = size;
		sp =-1;
	}
	
	public boolean push(T value){
		if(sp ==SIZE-1 )
			return false;
		
		stack[++sp] = value;
		return true;
	}
	
	public T pop(){
		if(sp==-1)
			return null;
		return stack[sp--];	
	}
	
	public T pack(){
		if(sp==-1)
			return null;
		return stack[sp];
	}
	
	public static void main(String[] args) {
		
		Stacks<Integer> tst = new Stacks<>(3);
		
		tst.push(1);
		tst.push(2);
		tst.push(3);
		tst.push(4);
		
		System.out.println(tst.pop());
		System.out.println(tst.pop());
		System.out.println(tst.pop());
		System.out.println(tst.pop());
		System.out.println(tst.pop());
	}

}
