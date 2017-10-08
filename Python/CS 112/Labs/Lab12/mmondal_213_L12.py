
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 12
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

class Bulb:
	def __init__(self,color='clear',is_alive=True):
		self.color=color
		self.is_alive=is_alive
	def __str__(self):
		if self.is_alive:
			return color[0:1]
		else:
			return "x"
	def matches_color(self,other):
		if self.color==self.other:
			return True 
		return False 
class LightStrand:
	def __init__(self,bulbs):
		self.bulbs=bulbs
	def __str__(self):
		bulbs=""
		for bulb in self.bulbs:
			if str(bulb)=="x":
				return "Broken"
			else:
				bulbs+=-{}-.format(str(bulb))
		return bulbs
	def alive(self):
		for bulb in self.bulbs:
			if str(bulb)=="x":
				return True
		return False
		
	def single_color(self):
		for bulb in self.bulbs:
			if bulb.matches_color(self.bulb[0])
	def bulb_count(self):
		return len(self.bulb)
		
		
		
		