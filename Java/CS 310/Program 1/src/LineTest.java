import org.junit.*;

import sun.applet.Main;

import static org.junit.Assert.*;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.*;

public class LineTest {

	String one = "this is the first line";
	String two = "this is the ine";
	String three="first l";
	
	
	
	public static void main(String[]args){
		
		
	}
	
	@Test
	public void testRemoveLine1() throws FileNotFoundException {
	    System.out.println("\n\ntestRemoveLine1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "dl\n -1\n sa\n q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	@Test
	public void testRemoveLine2() throws FileNotFoundException {
	    System.out.println("\n\ntestRemoveLine2\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n n\n"
	    		+ "dl\n 1\n sa\n q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);   
		
	}
	@Test
	public void testWrite1() throws FileNotFoundException {
	    System.out.println("\n\ntestWrite1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "w\n test1.txt\n q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	
	@Test
	public void copyRange1() throws FileNotFoundException {
	    System.out.println("\n\nCopyRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "el\n 1\n c\n 0\n 21\n q\n q\n").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	

	@Test
	public void copyRange2() throws FileNotFoundException {
	    System.out.println("\n\nCopyRange2\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "el\n 1\n c\n 21\n 21\n q\n q\n").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	
	@Test
	public void cutRange1() throws FileNotFoundException {
	    System.out.println("\n\ncutRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "el\n 1\n t\n 0\n 21\n q\n sa\n q\n").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	
	@Test
	public void cutRange2() throws FileNotFoundException {
	    System.out.println("\n\ncutRange2\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "el\n 1\n t\n 20\n 24\n q\n sa\n q\n").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	@Test
	public void DeleteRange1() throws FileNotFoundException {
	    System.out.println("\n\nDeleteRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n n sa\n"
	    		+ "el\n 1\n d\n 0\n 21\n y\n q\n sa\n q\n").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	@Test
	public void testShowRange1() throws FileNotFoundException {
	    System.out.println("\n\ntestShowRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n y\n"
	    		+ "This is the third line\n n\n sa\n"
	    		+ "sr\n 2\n 3\n q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	
	@Test
	public void testCopyRange1() throws FileNotFoundException {
	    System.out.println("\n\ntestShowRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n y\n"
	    		+ "This is the third line\n n\n sa\n"
	    		+ "cr 1 3 pl 3 sa"
	    		+ " q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	
	@Test
	public void testAll1() throws FileNotFoundException {
	    System.out.println("\n\ntestShowRange1\n\n");
	    String[] args = null;
	    ByteArrayInputStream in = new ByteArrayInputStream(("nl\n y\n"
	    		+ "This is the first line\n y\n"
	    		+ "This is the second line\n y\n"
	    		+ "This is the third line\n n\n sa\n"
	    		+ "cr 1 3 "
	    		+ "nl y\n"
	    		+ "This is middle\n n "
	    		+ "pl 4 dr 2 3 sa"
	    		+ " q").getBytes());
	    System.setIn(in);
	    LineEditor.main(args);

		
	}
	@Test
	public void testDeleteSubstring1(){
		Line Lone = new Line(one);
		Lone.deleteSubstring(12, 18);
		assertEquals(two,Lone.toString());	
	}
	
	@Test
	public void testInsertSubstring1(){
		Line Lone = new Line(one);
		Lone.deleteSubstring(12, 18);
		assertEquals(two,Lone.toString());
		Lone.insert(12, three);
		assertEquals(one,Lone.toString());
	}
	
	@Test
	public void testCopy1(){
		Line Lone = new Line(one);
		assertEquals(three,Lone.copy(12, 18));
	}
}
