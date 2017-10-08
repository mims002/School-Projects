
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lap 3
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

# TASK 0 (example)

# EXAMPLE: this function is implemented for you, to show 
# what a function definition looks like, and how the
# 'student' added four lines to complete the definition.

def each_kind(a,b,c):
	
	
	
	big=b
	midium=a
	small=a
	
	if a>b and a>c:
		big=a
	if c>a and c>b:
		big=c
	if b>a and b>c:
		big=b
	
	
	if b!=big and (b>c or b>a):
		midium=b
	if c!=big and (c>b or c>a):
		midium=c	
	if a!=big and (a>b or a>c):
		midium=a
	
	if (b<c and b<a):
		small=b
	if (c<b and c<a):
		small=c
	if (a<b and a<c):
		small=a
		
	abc=[small,midium,big]

	ans=False

	if abc[0]<0:
		if abc[1]==0:
			if abc[2]>0:
				ans=True
	
	return ans

	