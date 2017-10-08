import org.junit.*;
import static org.junit.Assert.*;
import java.util.*;
import modepkg.*;


public class Project5Tests {
  public static void main(String args[]){
    org.junit.runner.JUnitCore.main("Project5Tests");
  }
  
  
  //checks the constructor 
  @Test(timeout=20000) public void test_constructor_Pair(){
	  Pair<Integer,String> t1= new Pair<Integer,String>(55,"hEllO"); 
	  Pair<String,Integer> t2= new Pair<String,Integer>("hEllO",55);
	  Pair t3= new Pair('c',55);
	  Pair<Double,Integer>t4= new Pair<Double,Integer>(-99.55,-55);
	  
	  
	
			  
	  assertEquals(String.format("Input Pair(%s,x)...Got Pair(%s,x)",(Integer)55,t1.first),(Integer)55,t1.first);
	  assertEquals(String.format("Input Pair(x,%s)...Got Pair(x,%s)","hEllO",t1.second),"hEllO",t1.second);
	  
	  assertEquals(String.format("Input Pair(%s,x)...Got Pair(%s,x)","hEllO",t2.first),"hEllO",t2.first);
	  assertEquals(String.format("Input Pair(x,%s)...Got Pair(x,%s)",(Integer)55,t2.second),(Integer)55,t2.second);
	  
	  assertEquals(String.format("Input Pair(%s,x)...Got Pair(%s,x)",'c',t3.first),'c',t3.first);
	  
	  assertEquals(String.format("Input Pair(x,%s)...Got Pair(x,%s)",-55,t4.second),(Integer)(-55),t4.second);
	  if(-99.55 != t4.first){
		  fail(String.format("Input Pair(%s,x)...Got Pair(%s,x)",-99.55,t4.first));
	  }
	  
	  try{
		  Pair<Integer,Integer>t5=new Pair<Integer,Integer>(null,null);
		  Integer x = t5.first;
		  Integer y = t5.second;
		  fail("Nulls didn't throw an exception");
		  
	  }
	  catch (NullPointerException e){
		  assertTrue(true);
	  }
	  
	  
	 
  }
  //checks getFirst() using values from -1000 to 1000
  @Test(timeout=20000) public void test_getFirst_1(){
	  for(int start = -1000;start<1000;start++){
		  for(int end = -1000;end<1000;end++){
			  Pair<Integer, Integer> simple = new Pair<Integer, Integer>(start,end);
			  assertEquals((Integer)start, simple.getFirst());
			  
		  }
	  }
  }

  Pair<Integer,String> t1= new Pair<Integer,String>(55,"hEllO"); 
  Pair<String,Integer> t2= new Pair<String,Integer>("hEllO",55);
  Pair t3= new Pair('c',55);
  Pair<Double,Integer>t4= new Pair<Double,Integer>(-99.55,-55);
  Pair<Integer,Double>t5= new Pair<Integer,Double>(-55,-99.55);
 
  //checks double, alphabet and Integer mix 
  @Test(timeout=20000) public void test_getFirst_2(){
	  assertEquals((Integer)55, t1.getFirst());
	  assertEquals("hEllO",t2.getFirst());
	  assertEquals('c',t3.getFirst()); 
	  assertEquals((Integer)(-55), t5.getFirst());
  }
  
  //Checks doubles
  @Test(timeout=20000) public void test_getFirst_3(){
  	assertEquals((Double)(-99.55), t4.getFirst());
  	
  }

//checks getSecond() using values from -1000 to 1000
  @Test(timeout=20000) public void test_getSecond_1(){
	  for(int start = -1000;start<1000;start++){
		  for(int end = -1000;end<1000;end++){
			  Pair<Integer, Integer> simple = new Pair<Integer, Integer>(end,start);
			  assertEquals((Integer)start, simple.getSecond());
			  
		  }
	  }
  }

  //checks alphabet and Integer mix 
  @Test(timeout=20000) public void test_getSecond_2(){

	  assertEquals((Integer)55, t2.getSecond());
	  assertEquals("hEllO",t1.getSecond());
	  assertEquals(55,t3.getSecond());   
	  assertEquals((Integer)(-55), t4.getSecond());
  }

  
  //Checks doubles
  @Test(timeout=20000) public void test_getSecond_3(){
	  assertEquals((Double)(-99.55), t5.getSecond());
  }
 
  List <Pair<Integer,Integer>> t6 = new ArrayList<Pair<Integer,Integer>>() {{
  add(new Pair<Integer,Integer>(-1,-1));
  add(new Pair<Integer,Integer>(0,0));
  add(new Pair<Integer,Integer>(1,1));
  }};
  
  List <Pair<Double,Double>> t7 = new ArrayList<Pair<Double,Double>>() {{
  add(new Pair<Double,Double>(-.1,-.1));
  add(new Pair<Double,Double>(0.0,0.0));
  add(new Pair<Double,Double>(-.1,-.1));
  }};
  
  List <Pair<String,String>> t8 = new ArrayList<Pair<String,String>>() {{
  add(new Pair<String,String>("AAaa","AAaa"));
  add(new Pair<String,String>("BBbb","BBbb"));
  add(new Pair<String,String>("CCcc","CCcc"));
  }};
  
  //checks the toString Method
  @Test(timeout=20000) public void test_toString(){
	  assertEquals("Pair(55,hEllO)", t1.toString());
	  assertEquals("Pair(-99.55,-55)", t4.toString());
	  
  }
  
  //checks if int search works
  @Test(timeout=20000) public void test_indexByFirst_1(){
	    
	 assertEquals(1, Pair.indexByFirst(t6, 0));
	 assertEquals(-1, Pair.indexByFirst(t6, 10));
	 assertEquals(0, Pair.indexByFirst(t6, -1));
	  
  }
  
  //checks if double search works
  @Test(timeout=20000) public void test_indexByFirst_2(){
	    
	 assertEquals(1, Pair.indexByFirst(t7, 0.0));
	 assertEquals(0, Pair.indexByFirst(t7, -0.1));
	 assertEquals(-1, Pair.indexByFirst(t7, 1.1));
	  
  }
  
  //checks if String search works
  @Test(timeout=20000) public void test_indexByFirst_3(){
	    
	 assertEquals(1, Pair.indexByFirst(t8, "BBbb"));
	 assertEquals(-1, Pair.indexByFirst(t8, "bbBB"));
	 assertEquals(0, Pair.indexByFirst(t8, "AAaa"));
	  
  }
  
  //checks if int search works
  @Test(timeout=20000) public void test_indexBySecond_1(){
	    
	 assertEquals(1, Pair.indexBySecond(t6, 0));
	 assertEquals(0, Pair.indexBySecond(t6, -1));
	 assertEquals(-1, Pair.indexBySecond(t6, 10));		  
	  }
  //checks if double search works
  @Test(timeout=20000) public void test_indexBySecond_2(){
	    
	 assertEquals(1, Pair.indexBySecond(t7, 0.0));
	 assertEquals(0, Pair.indexBySecond(t7, -.1));
	 assertEquals(-1, Pair.indexBySecond(t7, 1.0));
		  
	  }
  
  //checks if String search works
  @Test(timeout=20000) public void test_indexBySecond_3(){
	    
	 assertEquals(1, Pair.indexBySecond(t8, "BBbb"));
	 assertEquals(0, Pair.indexBySecond(t8, "AAaa"));
	 assertEquals(-1, Pair.indexBySecond(t8, "bbBB"));
		  
	  }
  //checks if the set method works
  @Test(timeout=20000) public void test_setFirst(){
	  t1.setFirst(9);
	  assertEquals((Integer)9, t1.getFirst());
	  
	 // t1.setFirst(null);
	 // assertEquals(null, t1.getFirst());
	  
	  t2.setFirst("WorKs");
	  assertEquals("WorKs", t2.getFirst());
	  
	  t4.setFirst(-1.0001);
	  assertEquals((Double)(-1.0001), t4.getFirst());
	  
  }
  
  //checks if the set method works
  @Test(timeout=20000) public void test_setSecond(){
	  t2.setSecond(9);
	  assertEquals((Integer)9, t2.getSecond());
	  
	 // t2.setSecond(null);
	//  assertEquals(null, t2.getSecond());
	  
	  t1.setSecond("WorKs");
	  assertEquals("WorKs", t1.getSecond());
	  
	  t5.setSecond(-1.0001);
	  assertEquals((Double)(-1.0001), t5.getSecond());
	  
  }
   
  ////////////////////////////////////////////  
  
  final List<Integer> l1= new ArrayList<Integer>(Arrays.asList(-1,-2,-3,-3,-3,1,1,2,2,3,3,4,4,5,5,5,6,6,6,7,8,9,10));
  final List<Integer> l2= new ArrayList<Integer>(Arrays.asList(-1,0,0,0,1));
  final List<Double> l3= new ArrayList<Double>(Arrays.asList(-3.,-.1,-0.02,0.01,0.2,.1));
  final List<String> l4= new ArrayList<String>(Arrays.asList("aaAA","bbBB","ccCC","ddDD","ddDD","aaAA"));
  final List<Integer> l5= new ArrayList<Integer>(Arrays.asList());
  final List<String> l6= new ArrayList<String>(Arrays.asList(null,null,null));

  
 //checks if the constructor works 
 @Test(timeout=20000) public void test_constructor_TestMe(){
	  try{
		  TestMe t1 = new TestMe();
		  t1.contains(l1, -1);
		  t1.getClass();
	  }
	  catch(Exception e)
	  {
		  fail(e.getMessage());
	  }
  }
  
  //tests the contains function Integers 
  @Test(timeout=20000) public void test_boolean_1(){
	  assertTrue(TestMe.contains(l1, -1));
	  assertTrue(TestMe.contains(l1, 10));
	  assertTrue(TestMe.contains(l1, 5));
	  assertTrue(TestMe.contains(l2, 0));
	  
	  assertFalse(TestMe.contains(l1,0));
	  assertFalse(TestMe.contains(l1,-10));
	  assertFalse(TestMe.contains(l5, null));
  }
  //tests the contains function doubles
  @Test(timeout=20000) public void test_boolean_2(){
	  assertTrue(TestMe.contains(l3, 0.2));
	  assertTrue(TestMe.contains(l3, -0.02));
	  assertTrue(TestMe.contains(l3, .1));
	  
	  assertFalse(TestMe.contains(l3,3.));
	  assertFalse(TestMe.contains(l3,0.0));
  }
  //tests the contains function String
  @Test(timeout=20000) public void test_boolean_4(){
	  assertTrue(TestMe.contains(l4, "aaAA"));
	  assertTrue(TestMe.contains(l4, "ddDD"));
	  
	  
	  assertFalse(TestMe.contains(l4,"AAaa"));
	  assertFalse(TestMe.contains(l4,"dddd"));
  }
//tests the contains function null
  @Test(timeout=20000) public void test_boolean_5(){
	  assertTrue(TestMe.contains(l6, null));
  }
  //tests the mode function Integers
  @Test(timeout=20000) public void test_mode_1(){
	  Integer [] t1={-3,5,6};
	  Integer [] t2={0,};
	  
	  
	  assertEquals(Arrays.toString(t1), Arrays.toString(TestMe.mode(l1).toArray()));
	  assertEquals(Arrays.toString(t2), Arrays.toString(TestMe.mode(l2).toArray()));
	  
  }
	  
  //tests the mode function Doubles
  @Test(timeout=20000) public void test_mode_2(){
	  Double [] t1={-3.,-.1,-0.02,0.01,0.2,.1};

	  assertEquals(Arrays.toString(t1), Arrays.toString(TestMe.mode(l3).toArray()));

  }
  //tests the mode function String
  @Test(timeout=20000) public void test_mode_3(){
	  String [] t1={"aaAA","ddDD"};
  
	  assertEquals(Arrays.toString(t1), Arrays.toString(TestMe.mode(l4).toArray()));	  
  }
  
  //tests the mode function nulls
  @Test(timeout=20000) public void test_mode_4(){
	  String [] t2={null};
	  assertEquals(Arrays.toString(t2), Arrays.toString(TestMe.mode(l6).toArray()));
  }
  //tests the mode function emptylist
  @Test(timeout=20000) public void test_mode_5(){
	  Integer [] t3={};
	  assertEquals(Arrays.toString(t3), Arrays.toString(TestMe.mode(l5).toArray()));
  }

  //tests the unique method 
  @Test(timeout=20000) public void test_unique(){
	  Integer [] t1 = {-1,-2,-3,1,2,3,4,5,6,7,8,9,10};
	  Integer [] t2 = {-1,0,1};
	  Double [] t3 = {-3.,-.1,-0.02,0.01,0.2,.1};
	  String [] t4 =  {"aaAA","bbBB","ccCC","ddDD"};
	 
	  
	  assertEquals(Arrays.toString(t1), Arrays.toString(TestMe.uniques(l1).toArray()));
	  assertEquals(Arrays.toString(t2), Arrays.toString(TestMe.uniques(l2).toArray()));
	  assertEquals(Arrays.toString(t3), Arrays.toString(TestMe.uniques(l3).toArray()));
	  assertEquals(Arrays.toString(t4), Arrays.toString(TestMe.uniques(l4).toArray()));
	  
  }
  //tests the unique method nulls
  @Test(timeout=20000) public void test_unique_2(){
	  String [] t5 =  {null};
	  final List<String> l7= new ArrayList<String>(Arrays.asList(null));
	  assertEquals(Arrays.toString(t5), Arrays.toString(TestMe.uniques(l7).toArray()));
  }
  
 //tests the unique method empty lists
  @Test(timeout=20000) public void test_unique_3(){
	  String [] t6 =  {};
	  //final List<Integer> l5= new ArrayList<Integer>(Arrays.asList());
	  assertEquals(Arrays.toString(t6), Arrays.toString(TestMe.uniques(l5).toArray()));
  }
  
	  
  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  