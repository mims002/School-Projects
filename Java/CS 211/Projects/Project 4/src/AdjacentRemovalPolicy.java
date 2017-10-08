//Implemented from Removal policy creates the Adjacent Removal policy 
public class AdjacentRemovalPolicy implements RemovalPolicy {
	//flags all the gems with AdjacentPolicy 
	@Override
	public void flagConnectedGems(int row, int col, Board b) {
		//calls the scoreMove to flag and doesn't use the score  
		this.scoreMove(row,col,b);

	}
	//returns the score of the AdjacentPolicy rules with the passed row & columm
	//also flags them 
	@Override
	public int scoreMove(int row, int col, Board b) {
		if(!b.validGemAt(row,col)){
		      String msg = String.format("Position (%d,%d) invalid on board:\n%s",row,col,b.toString());
		      throw new RuntimeException(msg);
		    }
		int score=0;
		b.clearFlags();
		//array of ints that correspond to all adjacent spaces
		int[][]adjacent = {{row,col},{row,col-1},{row,col+1},{row-1,col},{row+1,col}};
		//loops trough each coordinate to flag them
		for(int[]coor:adjacent){
			if(b.validGemAt(coor[0], coor[1]) && b.gemAt(coor[0], coor[1]).sameKind(b.gemAt(row,col))){
				b.gemAt(coor[0], coor[1]).setFlag();
				//counts how many are flagged 
				score++;
			}
		}
		//returns score ^2 for proper score 
		return score*score;
	}
	//class description 	
	@Override
	public String description() {
		return "Adjacent gems of the same kind will be removed";
	}
	//class description 
	@Override
	public String saveString() {
		return "AdjecentRemovalPolicy";
	}
	//Object description 
	@Override public String toString(){ return "AdjecentRemovalPolicy"; }

}
