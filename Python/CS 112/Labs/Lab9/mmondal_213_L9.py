
#---------------------------------------------------------------------------------------
# Name: Mrinmoy Mondal.
# G#: G00870639
# Lab 9
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
from math import *
def counts(xs):
	rap={}
	for i in range(len(xs)):
		if xs[i] in rap:
			rap[xs[i]]=rap[xs[i]]+1
		else:
			rap[xs[i]]=1
	return rap
	
def weeklies(plants_d):
	t=[]
	for d,r in plants_d.items():
		if r=="weekly":
			t.append(d)
			
	return sorted(t)
	
def closest(d,what,here):
	location=None
	coor=None
	x2=here[0]
	y2=here[1]
	for j,k in d.items():
		if k==what:
			x=j[0]
			y=j[1]
			tempL=sqrt((x2-x)**2+(y2-y)**2)	
			if location==None or tempL<location:
				location=tempL
				coor=j			
	return coor

def file_counts(filename):
	tt={}
	text=open(filename,"r")
	for t in text.readlines():
		t=int(t[:-1])
		if t in tt:
			tt[t]=tt[t]+1
		else:
			tt[t]=1
	return tt
				
				
				
				
				
				
				
				
				
				
