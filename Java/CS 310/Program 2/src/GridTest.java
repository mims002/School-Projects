import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;

import org.junit.Test;

public class GridTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	@Test
	public void testAddRow1() throws FileNotFoundException {
	    System.out.println("\n\ntestRemoveLine1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("n\n 0 0 9 5\n"
	    		+ "f 3 2 6 4 \"whoopie\n"
	    		+ "dr 8 4 1\n"
	    		+ "dis\n mr\n 1 2 0\n"
	    		+ "dis\n"
	    		+ "ic 2 dis ic 2 dis\n"
	    		+ "n 0 0 11 5\n"
	    		+ "dis q\n").getBytes());
	    System.setIn(in);
	    NumberGrid.main(args);

		
	}

}
