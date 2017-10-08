
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 10
# Lab Section 213
#-------------------------------------------------------------------------------
# Honor Code Statement: I received no assistance on this assignment that
# violates the ethical guidelines set forth by professor and class syllabus.
#-------------------------------------------------------------------------------
# References: data any lecture slides, text book pages, any other (allowed)
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

def get(xs, index, response=None):
	try:
		return xs[index]
	except:
		return response
def classify(input_string): 
	po=input_string.split(" ")
	re=[]
	ret=[]
	for i in po:
		try:
			re.append(int(i))
		except:
			if len(i)>0:
				ret.append(i)
	return(re,ret)
	
def shelve(inventory,product_list): 
	t={}
	for i in product_list:
		keyy=i[0]
		valuee=i[1]
		
		if keyy in t:
			t[keyy]=valuee+t[keyy]
		else:
			t[keyy]=valuee
	
	product_list=t
	
	for key,value in product_list.items():
		try:
			inventory[key]=value+inventory[key]
		except:
			inventory.update({key:value})
		if inventory[key]<0:
				raise ValueError("negative amount for " +key)

			
			
			