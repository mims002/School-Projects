
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lap 2
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

def is_even(n):
	# at the end, we'll return whatever current value
	# that's in ans as our return value. Somewhere in 
	# this function, you should re-assign it to be
	# either True or to False.
	ans = None
	
	# make decisions with if-else structures to determine
	# whether n is even (divisible by two) or not. Then,
	# set ans to equal True or equal False as your answer.
	
	# YOUR CODE GOES HERE. (Since it's an example, we've
	# already written "your code" - four lines).
	
	if n % 2 == 0 :
		ans = True
	else:
		ans = False
	
	# make this the last line of your function definition
	return ans

#-------------------------------------------------------------------------------

# TASK 1

# given a non-negative integer, this function returns a
# string (it does not print!) matching the letter grade
# for our class (check the syllabus).
def letter_grade(score):
	# starting value for variable ans. Change it before
	# the end of the function.
	ans = ""
	
	if(score>=60):
		ans="D"
	else:
		ans="F"
	if(score>=70):
		ans="C-"
	if(score>=72):
		ans="C"
	if(score>=78):
		ans="C+"
	if(score>=80):
		ans="B-"
	if(score>=82):
		ans="B"
	if(score>=88):
		ans="B+"
	if(score>=90):
		ans="A-"
	if(score>=92):
		ans="A"
	if(score>=98):
		ans="A+"
	
	
	
	
	# leave this as the last line of your function.
	return ans

#-------------------------------------------------------------------------------

# TASK 2

# without calling the max(), min(), or any sorting functionality,
# this function determines the two largest values of the three 
# and returns their sum. The integers might be negative. When
# there's a tie between two numbers, it doesn't actually matter
# which one you choose.

def sum2biggest(a, b, c):
	# starting value for variable ans. Replace it with the
	# actual answer integer before reaching the return stmt.
	ans = None
	
	big=b
	middle=a
	
	if a>b:
		big=a
		middle=b
	if c>middle:
		middle=c
	
	ans=(big+middle)+0

	# leave this as the last line of your function.
	return ans

#-------------------------------------------------------------------------------

	