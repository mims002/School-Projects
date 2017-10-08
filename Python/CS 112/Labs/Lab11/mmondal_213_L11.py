
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 11
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

class Grade:
	def	__init__(self,kind,name,percent):	
		self.name=name
		self.percent=int(percent)
		check=("test","lab","project","final")
		if kind not in check:
			raise GradingError("no Grade kind '{}'".format(kind))
		self.kind=kind
	
	def	__str__(self):
		formatted_String= '{0}:{1}({2}%)'.format(self.kind,self.name,self.percent)
		return formatted_String
	
	def	__repr__(self):
		centric="Grade('{0}', '{1}', {2})".format(self.kind,self.name,self.percent)
		return centric
	
	def	__eq__(self,other): 
		try:	
			if self.kind==other.kind:	
				if self.name==other.name:
					if self.percent==other.percent:
						return True
		except:
			return False
		return False	
class GradeBook:
	def	__init__(self):
		self.grades=[]
	
	def	__str__(self):
		formatted_output="GradeBook:\n"
		for Grades in self.grades:
			formatted_output+='\t'+str(Grades)+"\n"
		
		return formatted_output
	
	def	__repr__(self):
		return str(self)
	
	def	add_grade(self,	grade): 
		self.grades.append(grade)
	
	def	average_by_kind(self,kind):
		Total_Average=None
		Added_Up_All=0
		count=0
		for grade in self.grades:
			if kind in str(grade):
				Added_Up_All+=int(grade.percent)
				count+=1
		if count>0:
			Total_Average=Added_Up_All/count
		
		return Total_Average
				
	def	get_all_of(self,kind):
		r_list=[]
		for grade in self.grades:
			if kind in repr(grade):
				r_list.append(grade)
		return r_list
		
	def	get_by_name(self,name):
		for grade in self.grades:
			if name in str(grade):
				return grade
		raise GradingError(	"no Grade found named '{}'".format(name))
		
class GradingError(Exception):
	def	__init__(self,msg):
		self.msg=msg
		
	def	__str__(self):
		return(self.msg)
	
	def	__repr__(self):
		message_formatted="GradingError('''{}''')".format(self.msg)
		return message_formatted


