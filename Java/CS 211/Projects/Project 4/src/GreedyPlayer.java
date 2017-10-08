//Implements player to create an AI that always picks the best moves on 
//the board for maximum points 
public class GreedyPlayer implements Player {

	//finds the best possible score and returns the coordinate
	@Override
	public void executeMove(Game game) {
		//initiatizes the coordinate array and score
		int[]coor=new int[2];
		int score=0;
		//loops trough each coodrinate to see which would yield the highest score
		//and save that coordinate
		for(int x = 0; x<game.getBoard().getRows(); x++){
			for(int y=0; y<game.getBoard().getCols();y++){
				if(game.getBoard().validGemAt(x, y)){
					int current=game.getPolicy().scoreMove(x, y, game.getBoard());
					//when a bigger score is found it saves it 
					if(current>score){
						score = current;
						coor[0]=x;
						coor[1]=y;
					}
				}
			}
		}
		//calls the game to adjust score 
		game.removeGemAdjustScore(coor[0], coor[1]);

	}
	//class description 
	@Override
	public String saveString() {
		return ("GreedyPlayer");
	}
	//object description 
	@Override
	public String toString() {
		return ("GreedyPlayer");
	}

}
