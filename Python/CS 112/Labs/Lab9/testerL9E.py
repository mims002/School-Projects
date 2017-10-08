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
	
REQUIRED_DEFNS = ["counts",
				  "weeklies",
				  "closest",
				  "file_counts"
				 ]

RENAMED_FILE = "student"

SECRET_FILE = ".tester_file.txt"
def write_secret_file(contents, name=SECRET_FILE):
		f = open(name,"w")
		f.write(contents)
		f.close()


# END SPECIALIZATION SECTION
############################################################################
############################################################################

# enter batch mode by giving a directory to work on.
BATCH_MODE = (sys.argv[1] in ["."] or os.path.isdir(sys.argv[1]))



# This class contains multiple "unit tests" that each check
# various inputs to specific functions, checking that we get
# the correct behavior (output value) from completing the call.
class AllTests (unittest.TestCase):
	# counts
	def test_counts_1(self): self.assertEqual(counts("mississippi"),{'m':1, 'p':2, 'i':4, 's':4})
	def test_counts_2(self): self.assertEqual(counts([1,1,1,2,3,3,3,3,5]),{1:3,2:1,3:4,5:1})
	def test_counts_3(self): self.assertEqual(counts([2,2,2,2,2,2,2]),{2:7})
	def test_counts_4(self): self.assertEqual(counts([]),{})
	def test_counts_5(self): self.assertEqual(counts([1,2,3]),{1:1,2:1,3:1})
	def test_counts_6(self): self.assertEqual(counts("@"*100),{'@':100})
	def test_counts_7(self): self.assertEqual(counts("abracadabra"),{'r':2,'d':1,'c':1,'b':2,'a':5})
	
	# weeklies
	def test_weeklies_1(self): self.assertEqual(weeklies({'shamrock':'weekly', 'cactus':'monthly', 'rose':'weekly', 'succulent':'biweekly'}),['rose','shamrock'])
	def test_weeklies_2(self): self.assertEqual(weeklies({'fern':'weekly', 'shamrock':'weekly', 'carnation':'weekly'}),['carnation','fern','shamrock'])
	def test_weeklies_3(self): self.assertEqual(weeklies({'a':'weekly', 'b':'weekly', 'c':'weekly', 'Z':'weekly', 'x':'weekly'}), ['Z', 'a', 'b', 'c', 'x'])
	def test_weeklies_4(self): self.assertEqual(weeklies({'a':'biweekly', 'b':'weekly!!', 'weeds':'never'}), [])
	def test_weeklies_5(self): self.assertEqual(weeklies({'weekly':'wrongplace','biweekly':'baddata'}), [])
	def test_weeklies_6(self): self.assertEqual(weeklies({}), [])
	
	
	# closest
	def test_closest_1(self): d = {(3,1):'gas', (1,4):'gas', (2,1):'food', (5,5):'food'}; self.assertEqual(closest(d,'gas',(2,2)),(3,1))
	def test_closest_2(self): d = {(3,1):'gas', (1,4):'gas', (2,1):'food', (5,5):'food'}; self.assertEqual(closest(d,'gas',(5,5)),(1,4))
	def test_closest_3(self): d = {(3,1):'gas', (1,4):'gas', (2,1):'food', (5,5):'food'}; self.assertEqual(closest(d,'food',(5,5)),(5,5))
	def test_closest_4(self): d = {(3,1):'gas', (1,4):'gas', (2,1):'food', (5,5):'food'}; self.assertEqual(closest(d,'food',(1,4)),(2,1))
	def test_closest_5(self): d = {(3,1):'gas', (1,4):'gas', (2,1):'food', (5,5):'food'}; self.assertEqual(closest(d,'hotel',(1,4)),None)
	def test_closest_6(self): d = {(5,0):'gas', (0,5):'gas', (5,5):'gas'}; self.assertEqual(closest(d,'gas',(3,3)),(5,5))
	def test_closest_7(self): d = {}; self.assertEqual(closest(d,'gas',(3,3)),None)

	# file_closest
	def test_file_counts_1(self): write_secret_file("1\n1\n1\n2\n3\n3\n3\n3\n5\n"); self.assertEqual(file_counts(SECRET_FILE),{1:3,2:1,3:4,5:1})
	def test_file_counts_2(self): write_secret_file("100\n100\n3\n100\n9\n9\n"); self.assertEqual(file_counts(SECRET_FILE),{100:3, 3:1, 9:2})
	def test_file_counts_3(self): write_secret_file("13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n13\n"); self.assertEqual(file_counts(SECRET_FILE),{13:16})
	def test_file_counts_4(self): write_secret_file("-2\n"); self.assertEqual(file_counts(SECRET_FILE),{-2:1})
	def test_file_counts_5(self): write_secret_file(""); self.assertEqual(file_counts(SECRET_FILE),{})

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
