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
#    follow a convention: to test a function named foobar, the test must be
#    named "test_foobar_#", where # may be any digits at the end, such as
#    "test_foobar_13".
# - any extra-credit tests must be named "test_extra_credit_foobar_#"
# 
# - name all required definitions in REQUIRED_DEFNS. Do not include any
#   unofficial helper functions. If you want to make helper definitions
#   to use while testing, those can also be added there for clarity.
# 
# # TO IMPLEMENT (not yet a feature):
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
	
REQUIRED_DEFNS = ['Bulb','LightStrand']

# things inside of classes that we also want to use as test names (the classes' methods)
SUB_DEFNS = ['Bulbstr','alive', 'single_color', 'bulb_count','strandstr']

RENAMED_FILE = "student"

# END SPECIALIZATION SECTION
############################################################################
############################################################################

#BEGIN EXTRAS SECTION

# END EXTRAS SECTION

############################################################################
############################################################################



# enter batch mode by giving a directory to work on.
BATCH_MODE = (sys.argv[1] in ["."] or os.path.isdir(sys.argv[1]))



# This class contains multiple "unit tests" that each check
# various inputs to specific functions, checking that we get
# the correct behavior (output value) from completing the call.
class AllTests (unittest.TestCase):
	
	
	#---------------------------------------------------------------------
	
	# class Bulb
	def test_Bulb_1(self):
		b = Bulb("red",False)
		self.assertEqual(b.is_alive,False)
	
	def test_Bulb_2(self):
		b = Bulb("red",True)
		self.assertEqual(b.color,"red")
	
	def test_Bulb_3(self):
		b = Bulb("green")
		self.assertEqual(b.is_alive,True)
		self.assertEqual(b.color,"green")
	
	def test_Bulb_4(self):
		b = Bulb()
		self.assertEqual(b.is_alive,True)
		self.assertEqual(b.color, "clear")
	
	def test_Bulb_5(self):
		b1 = Bulb("red",True)
		b2 = Bulb("red",False)
		self.assertTrue(b1.matches_color(b2))
		self.assertTrue(b2.matches_color(b1))
	
	def test_Bulb_6(self):
		b1 = Bulb("red",True)
		b2 = Bulb("green",True)
		self.assertFalse(b1.matches_color(b2))
		self.assertFalse(b2.matches_color(b1))
	
	# todo: tests for __str__. aim for 4 tests.
	def test_Bulbstr_1(self):
		red_bulb    = Bulb("red",    True)
		green_bulb  = Bulb("green",  True)
		blue_bulb   = Bulb("blue",   True)
		yellow_bulb = Bulb("yellow", True)
		clear_bulb  = Bulb("clear",  True)

		# rely upon built-in str() function to find your __str__ definition.
		self.assertEqual(str(red_bulb),  "r")
		self.assertEqual(str(green_bulb),"g")
		
		# directly call your __str__ definition without involving str().
		self.assertEqual(blue_bulb.__str__(),"b")
		self.assertEqual(yellow_bulb.__str__(),"y")
		self.assertEqual(clear_bulb.__str__(),"c")
	
	# test again, relying upon defaults.
	def test_Bulbstr_2(self):
		red_bulb    = Bulb("red")
		green_bulb  = Bulb("green")
		blue_bulb   = Bulb("blue")
		yellow_bulb = Bulb("yellow")
		clear_bulb  = Bulb()

		# rely upon built-in str() function to find your __str__ definition.
		self.assertEqual(str(red_bulb),  "r")
		self.assertEqual(str(green_bulb),"g")
		
		# directly call your __str__ definition without involving str().
		self.assertEqual(blue_bulb.__str__(),"b")
		self.assertEqual(yellow_bulb.__str__(),"y")
		self.assertEqual(clear_bulb.__str__(),"c")

	# test again, relying upon defaults.
	def test_Bulbstr_3(self):
		red_bulb    = Bulb("red",    False)
		green_bulb  = Bulb("green",  False)
		blue_bulb   = Bulb("blue",   False)
		yellow_bulb = Bulb("yellow", False)
		clear_bulb  = Bulb(is_alive=False)

		# rely upon built-in str() function to find your __str__ definition.
		self.assertEqual(str(red_bulb),  "x")
		self.assertEqual(str(green_bulb),"x")
		
		# directly call your __str__ definition without involving str().
		self.assertEqual(blue_bulb.__str__(),"x")
		self.assertEqual(yellow_bulb.__str__(),"x")
		self.assertEqual(clear_bulb.__str__(),"x")

	# test again, relying upon parameter names completely.
	def test_Bulbstr_4(self):
		red_bulb    = Bulb(color="red",    is_alive=False)
		green_bulb  = Bulb(color="green")
		# arbitrary ordering
		blue_bulb   = Bulb(is_alive=True, color="blue")
		yellow_bulb = Bulb(is_alive=False, color="yellow")
		clear_bulb  = Bulb(is_alive=False)

		# rely upon built-in str() function to find your __str__ definition.
		self.assertEqual(str(red_bulb),  "x")
		self.assertEqual(str(green_bulb),"g")
		
		# directly call your __str__ definition without involving str().
		self.assertEqual(blue_bulb.__str__(),"b")
		self.assertEqual(yellow_bulb.__str__(),"x")
		self.assertEqual(clear_bulb.__str__(),"x")
	
	#---------------------------------------------------------------------
	
	# class LightStrand
	
	# test init with length-zero, positive.
	# test alive with length zero, 1, many; by has-dead, doesn't.
	# test single color with length 0, 1, +, break at middle, end.
	# test bulb_count with positive length.
	# test __str__ with short length, long length; with dead bulbs in middle or end. check for "-BROKEN-".
	
	# goal: 15 tests

	def test_LightStrand_1(self):
		bs = []
		strand = LightStrand(bs)
		self.assertEqual(strand.bulbs, bs)
	
	def test_LightStrand_2(self):
		bs1 = [Bulb('red',True)]
		strand1 = LightStrand(bs1)
		self.assertEqual(strand1.bulbs, bs1)
		
		bs2 = [Bulb('red',True)]
		strand2 = LightStrand(bs2)
		self.assertEqual(strand2.bulbs, bs2)
	
	def test_LightStrand_3(self):
		bs = [Bulb('red',True),Bulb('green',False),Bulb('clear',True)]
		strand = LightStrand(bs)
		self.assertEqual(strand.bulbs, bs)
	
	def test_alive_1(self):
		strand = LightStrand([])
		self.assertTrue(strand.alive())
	
	def test_alive_2(self):
		strand1 = LightStrand([Bulb()])
		self.assertTrue(strand1.alive())
		strand2 = LightStrand([Bulb(),Bulb(),Bulb(),Bulb()])
		self.assertTrue(strand2.alive())
	
	def test_alive_3(self):
		# five clears
		strand = LightStrand([Bulb(),Bulb(),Bulb(is_alive=False),Bulb(),Bulb()])
		self.assertFalse(strand.alive())
	
	def test_alive_4(self):
		# five clears
		strand1 = LightStrand([Bulb(),Bulb(),Bulb(),Bulb(is_alive=False)])
		self.assertFalse(strand1.alive())
		strand2 = LightStrand([Bulb(is_alive=False),Bulb(is_alive=False),Bulb(is_alive=False)])
		self.assertFalse(strand2.alive())
	
	def test_single_color_1(self):
		strand1 = LightStrand([])
		self.assertTrue(strand1.single_color())
		strand2 = LightStrand([Bulb('yellow')])
		self.assertTrue(strand2.single_color())
	
	def test_single_color_2(self):
		# five clears
		strand = LightStrand([Bulb(),Bulb(),Bulb(),Bulb(),Bulb()])
		self.assertTrue(strand.single_color())
	
	def test_single_color_3(self):
		strand = LightStrand([Bulb('red'),Bulb('green'),Bulb('yellow'),Bulb('blue'),Bulb('clear')])
		self.assertFalse(strand.single_color())
	
	def test_single_color_4(self):
		strand = LightStrand([Bulb(),Bulb(),Bulb('red'),Bulb(),Bulb(),Bulb()])
		self.assertFalse(strand.single_color())
	
	def test_bulb_count_1(self):
		strand = LightStrand([])
		self.assertEqual(strand.bulb_count(),0)
		
		strand = LightStrand([Bulb()])
		self.assertEqual(strand.bulb_count(),1)
		
		strand = LightStrand([Bulb(),Bulb()])
		self.assertEqual(strand.bulb_count(),2)
		
		strand = LightStrand([])
		for i in range(1000):
			strand.bulbs.append(Bulb())
		self.assertEqual(strand.bulb_count(),1000)
		
	def test_strandstr_2(self):
		strand0 = LightStrand([])
		self.assertEqual(str(strand0),"-")
		strand1 = LightStrand([Bulb()])
		self.assertEqual(str(strand1),"-c-")
		strand2 = LightStrand([Bulb(),Bulb(),Bulb()])
		self.assertEqual(str(strand2),"-c-c-c-")
	
	def test_strandstr_3(self):
		strand = LightStrand([Bulb('red'),Bulb('green'),Bulb('red'),Bulb('green'),Bulb('red')])
		self.assertEqual(str(strand),"-r-g-r-g-r-")
	
	def test_strandstr_4(self):
		strand1 = LightStrand([Bulb(),Bulb(is_alive=False),Bulb()])
		self.assertEqual(str(strand1),"-BROKEN-")
		strand2 = LightStrand([Bulb('red',False),Bulb('green',False),Bulb('red',False),Bulb('green',False),Bulb('red',False)])
		self.assertEqual(str(strand2),"-BROKEN-")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
# This class digs through AllTests, counts and builds all the tests,
# so that we have an entire test suite that can be run as a group.
class TheTestSuite (unittest.TestSuite):
	# constructor.
	def __init__(self,wants):
		# find all methods that begin with "test".
		fs = []
		want_all = wants==None
		
		for func in AllTests.__dict__:
			# append regular tests
			# drop any digits from the end of str(func).
			dropnum = str(func)
			while dropnum[-1] in "1234567890":
				dropnum = dropnum[:-1]
			
			if func in ['__doc__', '__module__']:
				continue
			# check if we want this one.
			want_this_one = want_all
			if wants != None:
				for w in wants:
					is_ec = dropnum==("test_extra_credit_"+w+"_")
					if is_ec:
						want_this_one = False
						break
					is_test = dropnum==("test_"+w+"_")
					check = is_test and ((not is_ec) or (is_ec and (not BATCH_MODE)))
					want_this_one = want_this_one or check
			
			if want_this_one:
				fs.append(AllTests(str(func)))
		
		# call parent class's constructor.
		unittest.TestSuite.__init__(self,fs)

class TheExtraCreditTestSuite (unittest.TestSuite):
		# constructor.
		def __init__(self,wants):
			# find all methods that begin with "test".
			fs = []
			want_all = wants==None
			for func in AllTests.__dict__:
				want_this_one = want_all
				if wants != None:
					for w in wants:
						is_ec = (str(func).startswith("test_extra_credit_"+w))
						want_this_one = want_this_one or is_ec
				
				if BATCH_MODE and want_this_one:
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
			elif w in SUB_DEFNS:
				wants.append(w)
			else:
				raise Exception("asked to limit testing to unknown function '%s'."%w)
	else:
		wants = None # signifies that we want them all.
	
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
