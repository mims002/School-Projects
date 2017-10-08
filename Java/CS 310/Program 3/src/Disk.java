/* Disk.java
*  Mrinmoy Mondal
*  mmondal
*/
//holds the disk 
public class Disk {
	private int sectorCount;
	private int sectorSize;
	private char[][] store;
	//constructor sets the size of the Disk
	public Disk(int sectorCount, int sectorSize){
		this.sectorCount = sectorCount;
		this.sectorSize  = sectorSize;
		this.store = new char[sectorCount][sectorSize];
	}
	//reads the sector into the buffer
	public void readSector(int sectorNumber, char[] buffer){   // sector to buffer
		for(int i=0; i<buffer.length;i++){
			buffer[i] = store[sectorNumber][i];
		}
		//System.out.println("#" + sectorNumber+"\t"+ new String(store[sectorNumber]));
	}
	//writes from buffer to disk
	public void writeSector(int sectorNumber, char[] buffer){  // buffer to sector
		this.store[sectorNumber]= buffer;
		//System.out.println("#" + sectorNumber+"\t"+ new String(store[sectorNumber]));
	}
	//returns the number of sectors
	public int getSectorCount(){
		return sectorCount;
	}
	//returns the sector size 
	public int getSectorSize(){
		return sectorSize;
	}
}