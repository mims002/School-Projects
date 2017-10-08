import java.util.ArrayList;
import java.util.Iterator;

public class CompareObjects <T> implements Iterable  {

	
	private ArrayList<T> data;
	
	
	public CompareObjects(){
		data =  new ArrayList<T>();
		 
	}
	
	public void add(T s){
		data.add(s);
	}
	
	private class TestItor implements Iterator<T>{

		int index;
		
		public TestItor(){
			index =0;
		}
		
		@Override
		public boolean hasNext() {
			if(index<data.size())
				return true;
			return false;
		}

		@Override
		public T next() {
			return data.get(index++);
			
		}
		
	}

	@Override
	public Iterator iterator() {
		
		return new TestItor();
	}


	
	/*public int compareTo(CompareObjects<T> arg0) {
		
		return this.data.compareTo(arg0.data);
	}



	@Override
	public Iterator iterator() {
		// TODO Auto-generated method stub
		return null;
	}
*/
}
