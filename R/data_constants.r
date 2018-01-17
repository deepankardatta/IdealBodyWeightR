Data constants for IVIG calculator

Gender	Male	Female

IVIG types and flow rates (ml/kg/h)
Type / Rate	1st rate	2nd rate	3rd rate	4th rate	5th rate		BMI limit	High BMI calculation formula
KIOVIG	0.5	1	2	4	6		30	1.2 times ideal body weight
OCTAGAM	0.6	1.2	2.4	4.8	7.2		30	Ideal body weight added to 40% of the patient weight minus the ideal body weight
PRIVIGEN	0.3	0.6	1.2	2.4	4.8		30	Ideal body weight added to 40% of the patient weight minus the ideal body weight


Data limits	Minimum	Maximum
Height	0.6	2.5
Weight	40	200
Days	1	5
Dose	0.1	2

Ideal body weight calculator
Formula	Devine constant
Male	50
Female	45.5


Formulas to copy
=IF(Prescribed_days<2,TRUE,FALSE)
=IF(Error_check=TRUE,TRUE,FALSE)
