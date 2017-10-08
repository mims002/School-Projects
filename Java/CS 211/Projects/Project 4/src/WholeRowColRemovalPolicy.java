//Implements RemovalPolicy to create wholeRowRemoval 
//removes everything that is in the same row or column that are connected
//together 
public class WholeRowColRemovalPolicy implements RemovalPolicy {
	//flags all the gem that are in the same row or column connected
	@Override
	public void flagConnectedGems(int row, int col, Board b) {
		//calls the scoreMove to flag and doesn't use the score  
		this.scoreMove(row,col,b);

	}
	//scores and flags all the gem that are in the same row or column connected
	//then returns the calculated score 
	@Override
	public int scoreMove(int row, int col, Board b) {
		if(!b.validGemAt(row,col)){
		      String msg = String.format("Position (%d,%d) invalid on board:\n%s",row,col,b.toString());
		      throw new RuntimeException(msg);
		    }
		int score=0;
		b.clearFlags();
		
		//loops and flags all the gems in the same row 
		//checks all to the left 
		for(int i = row-1; i>=0;i--){
			if(b.validGemAt(i, col) && b.gemAt(i, col).sameKind(b.gemAt(row,col))){
				b.gemAt(i, col).setFlag();
				//counts how many are flagged 
				score++;
			}
			else
				break;
		}
		//checks all to the right 
		for(int i = row; i<b.getRows();i++){
			if(b.validGemAt(i, col) && b.gemAt(i, col).sameKind(b.gemAt(row,col))){
				b.gemAt(i, col).setFlag();
				//counts how many are flagged 
				score++;
			}
			else
				break;
		}		
		
		//loops and flags all the gems in the same column
		//checks all upward
		for(int i = col-1; i>=0;i--){
			if(b.validGemAt(row, i) && b.gemAt(row, i).sameKind(b.gemAt(row,col))){
				b.gemAt(row, i).setFlag();
				//counts how many are flagged 
				score++;
			}
			else
				break;
		}
		//checks everything downward
		for(int i = col; i<b.getCols();i++){
			if(b.validGemAt(row, i) && b.gemAt(row, i).sameKind(b.gemAt(row,col))){
				b.gemAt(row, i).setFlag();
				//counts how many are flagged 
				score++;
			}
			else
				break;
		}

		//returns score ^2 for proper score 
		return --score*score;
		
	}
	//class description 
	@Override
	public String description() {
		// TODO Auto-generated method stub
		return "Adjacent gems in whole row/column will be removed";
	}
	//class description
	@Override
	public String saveString() {
		// TODO Auto-generated method stub
		return "WholeRowRemovalPolicy";
	}
	
	//object description
	public String toString(){ return "WholeRowRemovalPolicy"; }
}
