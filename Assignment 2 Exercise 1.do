//Assignment 2 Exercise 1
clear               
clear matrix	   	
capture log close
cd "C:\Users\William Li\Documents\Uni Marburg 2.0\WS18 Macroeconomics\Tutorial\Assignment 2\"
log using "assignment 2 ex 1.log", replace
use assignment_wageregression.dta, clear

label variable WAGE "wage"
label variable EDUCATION "education"
label variable SEX "sex"
label variable EXPERIENCE "experience"
label variable UNION "union"
label variable AGE "age"
label variable RACE "race"
label variable MARR "marriage"

//a
gen WAGE_MALE=WAGE if SEX==0
label variable WAGE_MALE "male"
gen WAGE_FEMALE=WAGE if SEX==1
label variable WAGE_FEMALE "female"

su WAGE_MALE
su WAGE_FEMALE

//b
twoway hist WAGE if SEX==0, xtitle("Hourly Wages For Male") name(Male)
twoway hist WAGE if SEX==1, xtitle("Hourly Wages For Female") name(Female)
//c
ttest WAGE, by(SEX)
//d
gen LWAGE=log(WAGE)
label variable LWAGE "lwage"
reg LWAGE
reg LWAGE SEX
estat imtest, white
//e
reg LWAGE SEX EDUCATION EXPERIENCE
//f
gen EXPERIENCE_SQ=EXPERIENCE^2
label variable EXPERIENCE_SQ "experience_sq" 
reg WAGE SEX EDUCATION EXPERIENCE EXPERIENCE_SQ
reg LWAGE SEX EDUCATION EXPERIENCE EXPERIENCE_SQ
//g...
sort EXPERIENCE
regress LWAGE EXPERIENCE
mfx

cap log close
clear

exit
