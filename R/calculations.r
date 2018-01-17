Basic calculations for IVIG sheet

Error checking	TRUE		This will be TRUE if an error condition is reached - see calculations below
Version of excel used	17		This gives the version of excel being used - for excel error checking
Operating system	Macintosh (Intel) Version 10.13.2 (Build 17C205)		This gives the operating system version
Validated version	FALSE		This will check if we are using Excel 2003 Windows which will be the NHS Lothian validated platform - this will be version 11, however there is also a separate Mac version 11

Patient's weight (kg)	0		Uses the information on the 1st page
Patient's height (m)	0		Uses the information on the 1st page
BMI (mass/squared height)	#DIV/0!		Calculates body mass index as weight divided by height squared
Height in inches	0		Converts height into inches as needed for ideal body weight calculator
Gender	0		Uses the information on the 1st page
Prescribed IVIG	OCTAGAM		Uses the information on the 1st page
Prescribed dose	0		Uses the information on the 1st page - this new version works it as total dose per kg
Prescribed days	5		This new version allows days from 1-5
BMI limit	30		Selects the correct limit for body mass index dependent on IVIG prescribed
Ideal body weight	-138		Lisiting of ideal body weight as calculated below
Actual body weight	0		Uses the information on the 1st page
High BMI IVIG weight	-82.8		Selects from below the correct weight to be used if the patient has a high BMI dependent on the IVIG used (this is a pecliarity of the IVIG administration beyond the scope of this calculator)
Weight used	#DIV/0!		Selects the weight used for the calculator between actual weight and IBW dependent on the particular IVIG BMI limit


Ideal body weight by Devine formula			Calculated ideal body weight by Devine equation
Consant by gender	0		Calculates the constant by the gender selected
2.3 x (height in inches-60)	-138		Calculates the second part of the calculation
Ideal body weight	-138		Calculates ideal body weight with the two above parts


IVIG dependent high BMI weight			Each IVIG uses a different formula to calculate an ideal weight if someone has a high BMI - this set calculates it all. Note each IVIG also has a different definition of high BMI
KIOVIG calculation	-165.6		1.2 times ideal body weight
KIOVIG limit	30		The high BMI limit of KIOVIG - uses the data constant on the 3rd page
OCTAGAM calculation	-82.8		Ideal body weight added to 40% of the patient weight minus the ideal body weight
OCTAGAM limit	30		The high BMI limit of OCTAGAM - uses the data constant on the 3rd page
PRIVIGEN calculation	-82.8		Ideal body weight added to 40% of the patient weight minus the ideal body weight
PRIVIGEN limit	30		The high BMI limit of PRIVIGEN - uses the data constant on the 3rd page
Prescribed IVIG	OCTAGAM		Uses the information on the 1st page
Prescribed IVIG limit	30		Selects the correct limit for body mass index dependent on IVIG prescribed
High BMI IVIG weight	-82.8		Calculates a derived weight to be used if the patient has a high BMI dependent on the IVIG used (this is a pecliarity of the IVIG administration beyond the scope of this calculator)


Dose calculator			Calculates the doses used daily as this will need to be rounded down as IVIG comes in 5g doses
Total dose	#DIV/0!		Calculates the total dose first before splitting down into days as this is how the original paper KIOVIG infusion was given
Total dose rounded down	#DIV/0!		Rounded down to the nearest 5g as each vial is 5g quantities
Prescribed days	5		Uses the information on the 1st page
Dose divided by days	#DIV/0!		Rounded total dose, divided by the number of days to allow the spreadsheet to eventually calculate daily doses
Lower dose	#DIV/0!		The lowest daily dose given over 5 days (as each days dose has to come to a multiple of 5g)
Higher dose	#DIV/0!		The highest daily dose given over 5 days (as each days dose has to come to a multiple of 5g)
Days to give lower dose	#DIV/0!		The number of days at the lower dose (actually works out from the higher dose days on the next line)
Days to give higher dose	#DIV/0!		The number of days at the higher dose
Lower volume	#DIV/0!		The volume of IVIG needed for the low dose days (all are at 100mg/ml i.e. 1g in 10ml)
Higher volume	#DIV/0!		The volume of IVIG needed for the high dose days (all are at 100mg/ml i.e. 1g in 10ml)
Higher dose needed?	#DIV/0!		Checks if there are any days needed at the higher dose (TRUE), or if there is only one dose (FALSE, or the higher and lower doses are the same)


  Error check			Set of checks to ensure no errors so we can let the calculator fail with a polite message
Has an error been reached?	TRUE		Checks if any of the scenarios below are false
Weight too low	1		Is the weight lower than the constant specified on the data constants tab
Weight too high	0		Is the weight higher than the constant specified on the data constants tab
Height too low	1		Is the height lower than the constant specified on the data constants tab
Height too high	0		Is the height higher than the constant specified on the data constants tab
Days prescribed too low	0		Is the days prescribed lower than the constant specified on the data constants tab (note hard coded to 5 days at present)
Days prescribed too high	0		Is the days prescribed higher than the constant specified on the data constants tab (note hard coded to 5 days at present)
No height given	1		Is there a height given?
  No weight given	1		Is there a weight given?
  No IVIG given	0		Is there an IVIG type given?
  No gender given	1		Is there a gender given?
  Is total dose too low	1
Is total dose too high	0
