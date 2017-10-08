
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 6
# Lab Section 213
#-------------------------------------------------------------------------------
# Honor Code Statement: I received no assistance on this assignment that
# violates the ethical guidelines set forth by professor and class syllabus.
#-------------------------------------------------------------------------------
# References: list any lecture slides, text book pages, any other (allowed)
# resources you've used.
#-------------------------------------------------------------------------------
# Comments and assumptions: A note to the grader as to any problems or
# uncompleted aspects of the assignment, as well as any assumptions about the
# meaning of the specification.
#-------------------------------------------------------------------------------
# NOTE: width of source code should be <= 80 characters to facilitate printing.
#2345678901234567890123456789012345678901234567890123456789012345678901234567890
# 10 20 30 40 50 60 70 80
#-----------------------------------------------------------------------


	
def	show_time(hour,min):
	end='am'
	if hour>=12: #convert to 12h format
		end='pm'
		hour-=12
	if hour==0:#condition for 0 time
		hour=12
	return('{}:{:02d}{}'.format(hour,min,end))
		


def split_up(funds,people):
	
	calc=((funds//people)+(funds%people)/people) #uses the '%' operator for change
	return('each person (of {}) gets ${:0.2f} as their share'.format(people,calc))
	

def border_msg(msg):
	msg=msg.split('\n') #modifies the array and saves an array 
	largest_length=0
	x=""
	beg_end=""
	
	for pp in msg: #finds the max length of the box
		largest_length=(len(pp)) if (len(pp)>largest_length) else largest_length
	largest_length+=4
	
	for i in range(largest_length): # print the top and bottom part
		if (i==0 or i==largest_length-1):
			beg_end+='+'
		else:
			beg_end+='-'
	
	for i in range(len(msg)): #prints the intenal of the box
		x+='\n| {:^{length}s} |'.format(msg[i],length=largest_length-4)
	
	x = beg_end+x+"\n"+beg_end+"\n" #combines all parts 
	
	return x 



