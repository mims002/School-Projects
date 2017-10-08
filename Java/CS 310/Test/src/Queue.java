
public class Queue <T> {
	int tail;
	int head;
	int size;
	
	T queue[];
	
	public Queue(int size) {
		queue = (T[]) new Object[size];

	}
	public void enqueue(T value){
		if(size==queue.length)
			this.resize((size+1)*2);
		
		queue[tail] = value;
		
		
		if(tail==head)
			head = (head+1)%queue.length;
		
		tail = (tail+1)%queue.length;
		size++;
			
	}
	public void resize(int capacity){
		T newQ[] = (T[])new Object[capacity];
		
		for(int i = 0; i<size; i++){
			newQ[i] = queue[(head+i)%queue.length];	
		}
		head = 0;
		tail = size;
		queue = newQ;
		
		
	}
	public T dequeue(){
		if(size == 0)
			return null;
	
		T temp = queue[head];
		queue[head] =null;
		
		head = (head+1)%queue.length;

		if(--size>0 && size == queue.length/4);
			this.resize(size);
		
		return temp;
	}
	
	public void printQ(){
		System.out.println(java.util.Arrays.toString(queue));
			
		System.out.println();
	}
	
	public static void main(String[] args) {
		Queue <Integer> q = new Queue<Integer>(10);
		
		for(int i=0; i<15; i++){
			q.enqueue(i);
			q.printQ();
		}
		
		for(int i=0; i<15; i++){
			q.dequeue();
			q.printQ();
		}
		
		for(int i=0; i<20; i++){
			q.enqueue(i);
			q.printQ();
		}
		

	}

}
