// Pass a game file as a command line argument
// 
// lila [java-jeopardy]% javac JavaJeopardy.java 
// lila [java-jeopardy]% java JavaJeopardy exam1.dat
//

import java.awt.image.*;
import java.io.*;
import java.util.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import javax.imageio.*;

public class JavaJeopardy {
  Map<String, Map <String,String>> questionsDB;
  JFrame gameFrame;		// Overall frame/window
  JComponent content;		// Where all the action happens
  JComponent board;		// Pane for the game board
  JComponent question;		// Pane for a single question
  int rows, cols;		// Size of board
  CardLayout layout;

  final String GAME_TITLE = "Java Jeopardy";
  final String QUESTION = "question";
  final String BOARD = "board";

  final static String END_QUESTION = "-";
  final static String END_CODE = "--";

  static Font fixed = new Font("monospaced", Font.PLAIN, 24);
  static Font standard = new Font("", Font.PLAIN, 24);

  // Parse a single question into a map
  static Map<String,String>  parseQuestion(Scanner input){
    Map <String,String> kv = new TreeMap<String,String>();
    String key,val;
    while(input.hasNext()){
      key = input.next();
      System.err.printf("Read %s\n",key);
      if(key.equals(END_QUESTION)){
	System.err.printf("End of question\n");
	break;
      }
      if(key.equals("code")){
	System.err.printf("Reading code\n");
	input.nextLine();	// Read rest of line
	StringBuilder sb = new StringBuilder();
	while(input.hasNextLine()){
	  String s = input.nextLine();
	  if(s.equals(END_CODE)){ break; }
	  sb.append(s); sb.append('\n');
	}
	val = sb.toString();
      }
      else{
	// if(key.equals("question") || 
	//    key.equals("image") || 
	//    key.equals("category")){
	System.err.printf("Reading a value\n");
	val = input.nextLine().trim();
      }
      kv.put(key,val);
    }
    return kv;
  }

  // Generate a row/column key
  static String rowColKey(int r, int c){
    return String.format("%d,%d",r,c);
  }

  // Parse All questions
  void parseQuestions(String filename) throws Exception{
    Scanner input = new Scanner(new File(filename));
    while(input.hasNext()){
      int r = input.nextInt();
      int c = input.nextInt();
      this.rows = Math.max(this.rows,r+1);
      this.cols = Math.max(this.cols,c+1);
      String key = rowColKey(r,c);
      System.err.printf("Reading entry %s\n",key);
      Map<String,String> value = parseQuestion(input);
      this.questionsDB.put(key,value);
    }
  }

  class JJLabel extends JLabel{
    JJLabel(String s){
      // super(s,JLabel.CENTER);
      super(String.format("<html><center>%s</center></html>",s));
      this.setFont(standard);
    }
  }

  class JJTextArea extends JTextArea {
    JJTextArea(String s, boolean code){
      super(s);
      this.setEditable(false);
      this.setColumns(80);
      this.setColumns(40);
      if(code){
	this.setFont(fixed);
      }
      else{
	this.setFont(standard);
	this.setLineWrap(true);
	this.setWrapStyleWord(true);
      }
    }
  }

  class JJQuestion extends JButton implements ActionListener{
    int row, col;
    JJQuestion(int r, int c, String label){
      this.row = r; this.col = c;
      this.setText(label);
      this.setFont(standard);
      this.addActionListener(this);
    }
    public void actionPerformed(ActionEvent e){
      this.setEnabled(false);	// Can't click again

      question.removeAll(); // Clears current question

      // question.setLayout(new BorderLayout());
      // question.setLayout(new FlowLayout());
      question.setLayout(new BoxLayout(question,BoxLayout.Y_AXIS));
      // Builds up question
      Map<String,String> q = questionsDB.get(rowColKey(this.row,this.col));
      if(q == null){
	throw new RuntimeException(String.format("No stuff for entry %d %d",this.row,this.col));
      }
      // Question text
      if(q.get("question") != null){
	// String text = String.format("<html>%s</html>",q.get("question"),false);
	// question.add(new JJLabel(text),BorderLayout.LINE_START);
	String text = q.get("question");
	question.add(new JJTextArea(text,false),BorderLayout.LINE_START);
      }
      if(q.get("code") != null){
	question.add(new JJTextArea(q.get("code"),true),BorderLayout.CENTER);
      }
      // Images
      String imgFile = q.get("image");
      if(imgFile != null){
	File fileWithPath = new File(System.getProperty("user.dir"),imgFile);
	try{
	  JPanel holder = new JPanel();
	  JLabel picLabel = new JLabel(new ImageIcon(fileWithPath.toString()));
	  holder.add(picLabel);
	  question.add(holder,BorderLayout.CENTER);
	} catch(Exception ex){
	    System.err.printf("Something went wrong with image %s:\n",fileWithPath);
	    ex.printStackTrace();
	    System.exit(-1);
	}
	  
      }

      // Question text
      String pts = q.get("points");
      if(pts != null){
	JJLabel pl = new JJLabel(pts);
	question.add(pl,BorderLayout.PAGE_START);
      }
      // Finish button shows board again
      JButton finish = new JButton("Finish");
      finish.setFont(standard);
      finish.addActionListener(
      	new ActionListener(){
	  public void actionPerformed(ActionEvent e){
	    CardLayout l = (CardLayout) content.getLayout();
	    l.show(content,BOARD);
	  }
	}
      );
      question.add(finish,BorderLayout.PAGE_END);
      	  
      // CardLayout l = (CardLayout) content.getLayout();
      layout.show(content,QUESTION);
    }
  }

  // Construct and run the game.
  JavaJeopardy() throws Exception{
    String databaseFile = globalFile;

    // Set up the database
    this.questionsDB = new TreeMap<String, Map<String,String>>();

    this.parseQuestions(databaseFile);


    // Set up the question and board panels
    this.question = new JPanel();
    this.board = new JPanel();
    this.board.setLayout(new GridLayout(this.rows,this.cols));

    // Fill in label headings
    for(int j=0; j<cols; j++){
      int i = 0;
      Map<String,String> theQuestion = this.questionsDB.get(rowColKey(i,j));
      if(theQuestion == null){
	throw new RuntimeException(String.format("No stuff for entry %d %d",i,j));
      }
      String label = theQuestion.get("label");
      if(label == null){
	throw new RuntimeException(String.format("No label for entry %d %d",i,j));
      }
      // JLabel jl = new JLabel(label);
      JJLabel jl = new JJLabel(label);
      this.board.add(jl);
    }      

    // Add accross rows
    for(int i=1; i<rows; i++){
      for(int j=0; j<cols; j++){
	Map<String,String> theQuestion = this.questionsDB.get(rowColKey(i,j));
	if(theQuestion == null){
	  System.err.printf("No stuff for entry %d %d\n",i,j);
	  JButton jb = new JButton();
	  jb.setEnabled(false);	// Can't click
	  this.board.add(jb);
	}
	else{
	  String points = theQuestion.get("points");
	  if(points == null){
	    throw new RuntimeException(String.format("No points for entry %d %d",i,j));
	  }
	  JJQuestion q = new JJQuestion(i,j,points);
	  this.board.add(q);
	}
      }
    }

    // Set up the frame
    this.gameFrame = new JFrame();
    this.gameFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    this.gameFrame.setTitle(GAME_TITLE);

    this.layout = new CardLayout();
    this.content = new JPanel(layout);
    this.gameFrame.add(this.content);

    this.content.add(board,BOARD);	 
    this.content.add(question,QUESTION);

    this.gameFrame.pack();
    this.gameFrame.setVisible(true);

    // CardLayout l = (CardLayout) this.content.getLayout();
    layout.show(content,BOARD);
  }

  static String globalFile;

  public static void main(String args[]) throws Exception{
    if(args.length < 1){
      System.out.println("usage: java JavaJeopardy gameFile.dat");
      return;
    }

    JavaJeopardy.globalFile = args[0];
    javax.swing.SwingUtilities.invokeLater(new Runnable() {
	public void run()  {
	  try {
	    new JavaJeopardy();
	  } catch(Exception e){
	    System.err.printf("Something went wrong:\n%s\n",e);
	    e.printStackTrace();
            return;
	    // System.exit(-1);
	  }
	}
      });
  }
}
