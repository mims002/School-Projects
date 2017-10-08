import java.util.Iterator;

public class TestComparable {



	public static void main(String[] args) {
		
		CompareObjects<Integer> jj = new CompareObjects<Integer>();
		jj.add(10);
		jj.add(11);
		jj.add(12);
		jj.add(13);
		
		Iterator<Integer> ll = jj.iterator();
		
		while(ll.hasNext())
			System.out.println(ll.next());
		
		
		//System.out.println(x.compareTo("Gfff"));
		

	}

}
