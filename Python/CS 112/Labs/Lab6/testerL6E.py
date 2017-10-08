# INSTRUCTOR: TO PREPARE:
#  - add test cases to class AllTests. They must begin with "test", and if it's
#    an extra credit test, it must begin with "test_extra_credit".
# 
#  - name all required definitions in REQUIRED_DEFNS.
# 
# to run on either a single file or all .py files in a folder (recursively):
#   python3 <thisfile.py> <your_one_file.py>
#   python3 <thisfile.py> <dir_of_files>

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
	
REQUIRED_DEFNS = ["show_time",
				  "split_up",
				  "border_msg"
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
	def test_showtime1 (self): self.assertEqual (show_time(0,0),  "12:00am")
	def test_showtime2 (self): self.assertEqual (show_time(12,0), "12:00pm")
	def test_showtime3 (self): self.assertEqual (show_time(5,0),  "5:00am")
	def test_showtime4 (self): self.assertEqual (show_time(23,0), "11:00pm")
	def test_showtime5 (self): self.assertEqual (show_time(4,15), "4:15am")
	def test_showtime6 (self): self.assertEqual (show_time(11,50),"11:50am")
	def test_showtime7 (self): self.assertEqual (show_time(12,59),"12:59pm")
	def test_showtime8 (self): self.assertEqual (show_time(18,13),"6:13pm")
	def test_showtime9 (self): self.assertEqual (show_time(23,59),"11:59pm")
	def test_showtime10(self): self.assertEqual (show_time(15,8), "3:08pm")
	
	def test_split_up1(self): self.assertEqual (split_up(20,3),"each person (of 3) gets $6.67 as their share")
	def test_split_up2(self): self.assertEqual (split_up(1.5,6),"each person (of 6) gets $0.25 as their share")
	def test_split_up3(self): self.assertEqual (split_up(100,100),"each person (of 100) gets $1.00 as their share")
	def test_split_up4(self): self.assertEqual (split_up(1,100),"each person (of 100) gets $0.01 as their share")
	def test_split_up5(self): self.assertEqual (split_up(1,10000),"each person (of 10000) gets $0.00 as their share")
	def test_split_up6(self): self.assertEqual (split_up(12345,678),"each person (of 678) gets $18.21 as their share")
	def test_split_up7(self): self.assertEqual (split_up(0,5),"each person (of 5) gets $0.00 as their share")
	def test_split_up8(self): self.assertEqual (split_up(1117,2),'each person (of 2) gets $558.50 as their share')
	
	def test_border_msg1(self): self.assertEqual (border_msg('a'),'+---+\n| a |\n+---+\n')
	def test_border_msg2(self): self.assertEqual (border_msg('hello'),'+-------+\n| hello |\n+-------+\n')
	def test_border_msg3(self): self.assertEqual (border_msg('supercalifragilisticexpialadocious'),'+------------------------------------+\n| supercalifragilisticexpialadocious |\n+------------------------------------+\n')
	def test_border_msg4(self): self.assertEqual (border_msg("a\nb\nc"),'+---+\n| a |\n| b |\n| c |\n+---+\n')
	def test_border_msg5(self): self.assertEqual (border_msg("a\nbc\ndef"),'+-----+\n|  a  |\n| bc  |\n| def |\n+-----+\n')
	def test_border_msg6(self): self.assertEqual (border_msg("hi!\nhow are you?\ndrive safely!"),'+---------------+\n|      hi!      |\n| how are you?  |\n| drive safely! |\n+---------------+\n')
	def test_border_msg7(self): self.assertEqual (border_msg(""),'+--+\n|  |\n+--+\n')

		
# This class digs through AllTests, counts and builds all the tests,
# so that we have an entire test suite that can be run as a group.
class TheTestSuite (unittest.TestSuite):
	# constructor.
	def __init__(self):
		# find all methods that begin with "test".
		fs = []
		for func in AllTests.__dict__:
			# append regular tests
			if str(func).startswith("test") and (not str(func).startswith("test_extra_credit")):
				fs.append(AllTests(str(func)))
			if str(func).startswith("test_extra_credit") and not BATCH_MODE:
				fs.append(AllTests(str(func)))
		
		# call parent class's constructor.
		unittest.TestSuite.__init__(self,fs)

class TheExtraCreditTestSuite (unittest.TestSuite):
		# constructor.
		def __init__(self):
			# find all methods that begin with "test".
			fs = []
			for func in AllTests.__dict__:
				if BATCH_MODE and str(func).startswith("test_extra_credit"):
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
	
	if not BATCH_MODE:
		run_file(sys.argv[1])
	else:
		filenames = files_list(sys.argv[1])
	
# 		print(filenames)
	
		results = []
		for filename in filenames:
			try:
				print("\n\n\nRUNNING: "+filename)
				(tag, passed,tried,ec) = run_file(filename)
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
def run_file(filename):

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
	suite1 = TheTestSuite()
	
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
		suiteEC = TheExtraCreditTestSuite()
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
