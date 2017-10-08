
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 7
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

def	rank3(x,y,z, ascending=True):
	li=[x,y,z]
	if ascending:
		for i in range(3):
			for t in range(i,3):
				if li[t]<li[i]:
					temp=li[i]
					li[i]=li[t]
					li[t]=temp
	else:
		for i in range(3):
			for t in range(i,3):
				if li[t]>li[i]:
					temp=li[i]
					li[i]=li[t]
					li[t]=temp
	pi=(li[0],li[1],li[2])
	return (pi)
	
def	remove(val,	xs,	limit=None):
	
	rep=xs.count(val)
	if limit==None:
		rep=rep
	elif limit>=0 :
		if limit<rep:
			rep=limit
	else:
		return xs
	
	for i in range(rep):
		xs.remove(val)
	
	return xs

def filter_chars(msg,keeps=None):
	nStr=""
	if keeps==None:
		for i in msg:
			if i.isalpha():
				nStr+=i

	else:
		for i in msg:
			for t in keeps:
				if i==t and (i.isalpha() or i==":"):
					nStr+=i
					break

	return nStr

def relocate_evens(data, new_home=None):


	rdata=[]
	
	if new_home==None:
		new_home=[]
	
	for i in range(len(data)-1,-1,-1):
		if data[i]%2==0:
			rdata.append(data[i])
			del data[i]
	
	rdata.reverse()
	
	new_home.extend(rdata)
	
	return new_home

