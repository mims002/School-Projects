# STUDENTS: TO USE:
# 
# The following command will test all test cases on your file:
# 
#   python3 <thisfile.py> <your_one_file.py>
# 
# 
# You can also limit the tester to only the functions you want tested.
# Just add as many functions as you want tested on to the command line at the end.
# Example: to only run tests associated with func1, func2, and func3, run this command:
# 
#   python3 <thisfile.py> <your_one_file.py> func1 func2 func3
# 


# INSTRUCTOR: TO PREPARE:
#  - add test cases to class AllTests. The test case functions' names must
# be precise - to test a function named foobar, the test must be named "test_foobar_#"
# where # may be any digits at the end, such as "test_foobar_13".
# - any extra-credit tests must be named "test_extra_credit_foobar_#"
# 
# - name all required definitions in REQUIRED_DEFNS. Do not include any unofficial 
#   helper functions. If you want to make helper definitions to use while testing,
#   those can also be added there for clarity.
# 
# to run on either a single file or all .py files in a folder (recursively):
#   python3 <thisfile.py> <your_one_file.py>
#   python3 <thisfile.py> <dir_of_files>
# 
# A work in progress by Mark Snyder, Oct. 2015.


import unittest
import shutil
import sys
import os
import time

import importlib

############################################################################
############################################################################
# BEGIN SPECIALIZATION SECTION (the only part you need to modify beyond 
# adding new test cases).

# name all expected definitions; if present, their definition (with correct
# number of arguments) will be used; if not, a decoy complainer function
# will be used, and all tests on that function should fail.
	
REQUIRED_DEFNS = ["rank3",
				  "remove",
				  "filter_chars",
				  "relocate_evens"
				 ]

RENAMED_FILE = "student"


# END SPECIALIZATION SECTION
############################################################################
############################################################################

# enter batch mode by giving a directory to work on.
BATCH_MODE = (sys.argv[1] in ["."] or os.path.isdir(sys.argv[1]))

# This class contains multiple "unit tests" that each check
# various inputs to specific functions, checking that we get
# the correct behavior (output value) from completing the call.
class AllTests (unittest.TestCase):
	def test_rank3_1 (self): self.assertEqual (rank3(5,3,4),(3,4,5))
	def test_rank3_2 (self): self.assertEqual (rank3(10,5,1),(1,5,10))
	def test_rank3_3 (self): self.assertEqual (rank3(2,4,3,False), (4,3,2))
	def test_rank3_4 (self): self.assertEqual (rank3(z=100,x=30,ascending=False,y=200),(200,100,30))
	def test_rank3_5 (self): self.assertEqual (rank3(1,3,1),(1,1,3))
	def test_rank3_6 (self): self.assertEqual (type(rank3(1,2,3)),tuple)
	
	def test_remove_1 (self):
		xs=[1,2,1,3,1,4,1,5,1]
		remove(1,xs)
		self.assertEqual (xs,[2,3,4,5])
	def test_remove_2 (self):
		xs=[1,2,1,3,1,4,1,5,1]
		remove(1,xs,3)
		self.assertEqual (xs,[2,3,4,1,5,1])
	def test_remove_3 (self):
		xs=[1,2,1,3,1,4,1,5,1]
		remove(1,xs,-5)
		self.assertEqual (xs,[1,2,1,3,1,4,1,5,1])
	def test_remove_4 (self):
		xs=[9,2,9,9,3,9,9,9,4,9,9,9,9,5,9,9,9,9,9,6]
		remove(9,xs)
		self.assertEqual (xs,[2,3,4,5,6])
	def test_remove_5 (self):
		xs=[1,2,1,3,1,4,1,5,1]
		remove(1234,xs)
		self.assertEqual (xs,[1,2,1,3,1,4,1,5,1])
	def test_remove_6 (self):
		xs=[1,2,1,3,1,4,1,5,1]
		remove(1,xs,50)
		self.assertEqual (xs,[2,3,4,5])
	
	def test_filter_chars_1 (self): self.assertEqual (filter_chars("hi there! :)"),"hithere")
	def test_filter_chars_2 (self): self.assertEqual (filter_chars("hi there! :)","ether"),"hthere")
	def test_filter_chars_3 (self): self.assertEqual (filter_chars("hi there! :)","ie:"),"iee:")
	def test_filter_chars_4 (self): self.assertEqual (filter_chars("hi there! :)","123"),"")
	def test_filter_chars_5 (self): self.assertEqual (filter_chars("abcd","abcdef"),"abcd")
	def test_filter_chars_6 (self): self.assertEqual (filter_chars(keeps="aeiou",msg="pleased to meet you"),"eaeoeeou")
	
	def test_relocate_evens_1 (self):
		xs = [1,2,3,4,5]
		ans = relocate_evens(xs)
		self.assertEqual (xs,[1,3,5])
	
	def test_relocate_evens_2 (self):
		xs = [1,2,3,4,5]
		ans = relocate_evens(xs)
		self.assertEqual (ans,[2,4])
	
	def test_relocate_evens_3 (self):
		vals = [6,7,8,9,10]
		sanctuary = [2,4]
		ans = relocate_evens(vals,sanctuary)
		self.assertEqual (sanctuary,[2,4,6,8,10])
	
	def test_relocate_evens_4 (self):
		vals = [6,7,8,9,10]
		sanctuary = [2,4]
		ans = relocate_evens(vals,sanctuary)
		self.assertEqual (ans,[2,4,6,8,10])
	
	def test_relocate_evens_5 (self):
		vals = [6,7,8,9,10]
		sanctuary = [2,4]
		ans = relocate_evens(vals,sanctuary)
		self.assertEqual (vals,[7,9])
		
	def test_relocate_evens_6 (self):
		xs = [1,2,3,4,5]
		ans1 = relocate_evens(xs)
		self.assertEqual (ans1,[2,4])
		self.assertEqual (xs,[1,3,5])
		ys = [6,7,8,9,10]
		
		# checking that the next call with no new_home value is 
		# safely unaffected by previous call. 
		ans2 = relocate_evens(ys)
		self.assertEqual (ans2,[6,8,10])
		self.assertEqual (ys,[7,9])
	
	def test_relocate_evens_7 (self):
		vals = [6,7,8,9,10]
		sanctuary = [2,4]
		ans = relocate_evens(new_home = sanctuary, data=vals)
		self.assertEqual (vals,[7,9])

# This class digs through AllTests, counts and builds all the tests,
# so that we have an entire test suite that can be run as a group.
class TheTestSuite (unittest.TestSuite):
	# constructor.
	def __init__(self,wants):
		# find all methods that begin with "test".
		fs = []
		for w in wants:
			for func in AllTests.__dict__:
				# append regular tests
				# drop any digits from the end of str(func).
				dropnum = str(func)
				while dropnum[-1] in "1234567890":
					dropnum = dropnum[:-1]
				
				if dropnum==("test_"+w+"_") and (not (dropnum==("test_extra_credit_"+w+"_"))):
					fs.append(AllTests(str(func)))
				if dropnum==("test_extra_credit_"+w+"_") and not BATCH_MODE:
					fs.append(AllTests(str(func)))
		
		# call parent class's constructor.
		unittest.TestSuite.__init__(self,fs)

class TheExtraCreditTestSuite (unittest.TestSuite):
		# constructor.
		def __init__(self,wants):
			# find all methods that begin with "test".
			fs = []
			for w in wants:
				for func in AllTests.__dict__:
					if BATCH_MODE and str(func).startswith("test_extra_credit_"+w):
						fs.append(AllTests(str(func)))
		
			# call parent class's constructor.
			unittest.TestSuite.__init__(self,fs)

# all (non-directory) file names, regardless of folder depth,
# under the given directory 'dir'.
def files_list(dir):
	info = os.walk(dir)
	filenames = []
	for (dirpath,dirnames,filez) in info:
#		print(dirpath,dirnames,filez)
		if dirpath==".":
			continue
		for file in filez:
			filenames.append(os.path.join(dirpath,file))
#		print(dirpath,dirnames,filez,"\n")
#		filenames.extend(os.path.join(dirpath, filez))
	return filenames

def main():
	if len(sys.argv)<2:
		raise Exception("needed student's file name as command-line argument:"\
			+"\n\t\"python3 tester4L.py gmason76_2xx_L4.py\"")
	want_all = len(sys.argv) <=2
	wants = []
	
	# remove batch_mode signifiers from want-candidates.
	want_candidates = sys.argv[2:]
	for i in range(len(want_candidates)-1,-1,-1):
		if want_candidates[i] in ['.'] or os.path.isdir(want_candidates[i]):
			del want_candidates[i]
	
	if not want_all:
		print("args: ",sys.argv)
		for w in want_candidates:
			if w in REQUIRED_DEFNS:
				wants.append(w)
			else:
				raise Exception("asked to limit testing to unknown function '%s'."%w)
	else:
		wants = REQUIRED_DEFNS
		
	if not BATCH_MODE:
		run_file(sys.argv[1],wants)
	else:
		filenames = files_list(sys.argv[1])
	
# 		print(filenames)
	
		results = []
		for filename in filenames:
			try:
				print("\n\n\nRUNNING: "+filename)
				(tag, passed,tried,ec) = run_file(filename,wants)
				results.append((tag,passed,tried,ec))
			except SyntaxError as e:
				results.append((filename+"_SYNTAX_ERROR",0,1))	
			except ValueError as e:
				return (filename+"_VALUE_ERROR",0,1)
			except TypeError as e:
				return (filename+"_TYPE_ERROR",0,1)
			except ImportError as e:
				results.append((filename+"_IMPORT_ERROR_TRY_AGAIN	",0,1))	
			except Exception as e:
				return (filename+str(e.__reduce__()[0]),0,1)
			
		print("\n\n\nGRAND RESULTS:\n")
		for (tag, passed, tried, ec) in results:
			print(("%.0f%%  (%d/%d, %dEC) - " % (passed/tried*100 + ec, passed, tried, ec))+tag)

# this will group all the tests together, prepare them as 
# a test suite, and run them.
def run_file(filename,wants=[]):
	
	# move the student's code to a valid file.
	shutil.copyfile(filename,"student.py")
	# wait half a second for file I/O to catch up...
		
	# import student's code, and *only* copy over the expected functions
	# for later use.
	import imp
	count = 0
	while True:
		try:
			import student
			imp.reload(student)
			break
		except ImportError as e:
			print("import error getting student.. trying again. "+os.getcwd(), os.path.exists("student.py"))
			time.sleep(0.5)
			count+=1
			if count>3:
				raise ImportError("too many attempts at importing!")
		except SyntaxError as e:
			results.append((filename+"_SYNTAX_ERROR",0,1))	
		except ValueError as e:
			return (filename+"_VALUE_ERROR",0,1)
		except TypeError as e:
			return (filename+"_TYPE_ERROR",0,1)
		except ImportError as e:
			results.append((filename+"_IMPORT_ERROR_TRY_AGAIN	",0,1))	
		except Exception as e:
			return (filename+str(e.__reduce__()[0]),0,1)
		except Exception as e:
			print("didn't get to import student yet... " + e)
	# but we want to re-load this between student runs...
	# the imp module helps us force this reload.s
	
	import student
	imp.reload(student)
	
	# make a global for each expected definition.
	def decoy(name):
		return (lambda x: "<no '%s' definition found>" % name)
		
	for fn in REQUIRED_DEFNS:
		globals()[fn] = decoy(fn)
		try:
			globals()[fn] = getattr(student,fn)
		except:
			print("\nNO DEFINITION FOR '%s'." % fn)	
	
	# create an object that can run tests.
	runner1 = unittest.TextTestRunner()
	
	# define the suite of tests that should be run.
	suite1 = TheTestSuite(wants)
	
	# let the runner run the suite of tests.
	ans = runner1.run(suite1)
	num_errors   = len(ans.__dict__['errors'])
	num_failures = len(ans.__dict__['failures'])
	num_tests    = ans.__dict__['testsRun']
	num_passed   = num_tests - num_errors - num_failures
	# print(ans)
	
	
	if BATCH_MODE:
		# do the same for the extra credit.
		runnerEC = unittest.TextTestRunner()
		suiteEC = TheExtraCreditTestSuite(wants)
		ansEC = runnerEC.run(suiteEC)
		num_errorsEC   = len(ansEC.__dict__['errors'])
		num_failuresEC = len(ansEC.__dict__['failures'])
		num_testsEC    = ansEC.__dict__['testsRun']
		num_passedEC   = num_testsEC - num_errorsEC - num_failuresEC
		print(ansEC)
	else:
		num_passedEC = 0
	
	# remove our temporary file.
	os.remove("student.py")
	if os.path.exists("__pycache__"):
		shutil.rmtree("__pycache__")
	
	tag = ".".join(filename.split(".")[:-1])
	return (tag, num_passed, num_tests,num_passedEC)

# this determines if we were imported (not __main__) or not;
# when we are the one file being run, perform the tests! :)
if __name__ == "__main__":
	main()
