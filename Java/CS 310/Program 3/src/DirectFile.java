/* DirectFile.java
*  Mrinmoy Mondal
*  mmondal
*/
import java.util.Arrays;
//inserts records and reads them from disk to Application 
public class DirectFile {
	private Disk disk;             // disk on which the file will be written
    private char[] buffer;         // disk buffer
    private int recordSize;        // in characters
    private int keySize;           // in characters
    private int recordsPerSector;
    private int firstAllocated;    // sector number
    private int bucketsAllocated;  // buckets (i.e. sectors) originally allocated   
    private int firstOverflow;     // sector number
    private int overflowBuckets;   // count of overflow buckets in use
    //constructor
	public DirectFile(Disk disk, int recordSize, int keysize, 
			int firstAllocatd, int bucketsAllocated){
		this.disk = disk;
		this.recordSize = recordSize;
		this.bucketsAllocated = bucketsAllocated;
		this.keySize = keysize;
		this.firstAllocated = firstAllocatd;
		this.firstOverflow = firstAllocatd+bucketsAllocated ;
		this.buffer = new char[disk.getSectorSize()];
		this.overflowBuckets =0;
		//sets the records size
		this.recordsPerSector = disk.getSectorSize()/this.recordSize;
		
	}
	//inserts the records from hash fuction or to a overflow bucket
	public boolean insertRecord(char[] record){
		//if the record already exists it returns
		if(this.findRecord(getKey(record)))
			return false;
		//gets the sector from the hash function 
		int sector = hash(getKey(record)) ;
		//System.out.println(new String(buffer));
		boolean overflow = !insertAt(sector, record);

		//if overflow occured it increaments the overflow 
		while(overflow && !insertAt(firstOverflow+overflowBuckets++, record)){
			//System.out.println(new String(buffer));
		}
		//System.out.println("count: "+ DirectFile.count++);
		if(overflow)
			overflowBuckets--;
		return true;
	}
	//inserts the record at an open index on sector
	//if no open space is found return false
	private boolean insertAt(int sector, char[]record){
		//reads the contents of that sector
		disk.readSector(sector, buffer);

		boolean written = false;
		//checks if there is space in the sector or needs to call overflow 
		for(int x =0; x<recordsPerSector*recordSize; x+=recordSize){
			if(buffer[x]==0 ){
				written = true;
				for(int i = 0; i<recordSize;i++){
					buffer[x+i]= record[i];	
				}
				this.disk.writeSector(sector, buffer);
				break;
			}
		}
		//clears the buffer for possible leaks
		this.buffer = new char[disk.getSectorSize()];
		return written;
	}
	//returns the key of a given record
	private char[] getKey(char[]record){
		return Arrays.copyOfRange(record, 0, keySize);
	}
	//finds the records and putinto the record array
	public boolean findRecord(char[] record){

		//reads the sector 
		disk.readSector(hash(getKey(record)), buffer);
		int i = firstOverflow;
		//if the record is not found it checks the overflow buckets
		while(!recordMatch(record, buffer)){	
			if(i>=firstOverflow+overflowBuckets || overflowBuckets==0)
				return false;
			//reads the sector 
			disk.readSector(i++, buffer); 
		}
		return true;
		
	}
	//checks if the record is in the buffer then returns it
	private boolean recordMatch(char[]record, char[]buffer){
		//gets the sector index
		int i;
		//checks if the record was found or not
		boolean x = true;
		for(i=0; i<recordsPerSector*recordSize; i+=recordSize){
			x = true;
			for(int j=0; j<keySize;j++){
				//if the record doesn't match the key changes x to false
				if(buffer[i+j]==record[j]) continue;
				x = false;
				break;
			}
			//if the record matches stops the loop
			if(x) break;
		}
		
		if(!x) return false;
		for(int t=0; t<recordSize;t++){
			record[t]=buffer[i+t];
		}
		
		return true;
	}	
	//returns the hash to the disk sector
	private int hash(char[] key){
		//returns the hash key wrapped to the sector
		return Math.abs(Arrays.toString(key).hashCode()%this.bucketsAllocated)+firstAllocated ;
	}
}