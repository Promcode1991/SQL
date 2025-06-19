CREATE TABLE "EMPLOYEE DATA" 
(Education varchar, 
Joiningyear int, 
City varchar, 
PaymentTier int, 
Age int, 
Gender varchar, 
EverBenched varchar, 
ExperienceInCurrentDomain int, 
LeaveOrNot int);

SELECT * FROM "EMPLOYEE DATA"







--Get the distinct joiningyear, city and education
SELECT DISTINCT joiningyear, city, education
FROM "EMPLOYEE DATA"





--female bachelors students in 2017 between 22 and 28 years

SELECT Education, Gender, joiningyear,age
FROM "EMPLOYEE DATA"
WHERE age BETWEEN 22 AND 28
AND gender = 'Female'
AND joiningyear = 2017
AND Education = 'Bachelors';

SELECT * FROM "EMPLOYEE DATA"




--Who had masters in 2013 at New Delhi

SELECT Gender, Education, joiningyear, city
FROM "EMPLOYEE DATA"
WHERE gender = 'Female'
AND education = 'Masters'
AND joiningyear = 2013
AND city = 'New Delhi';








--FEMALE GENDER BETWEEN AGE 25 AND 35 IN PUNE
SELECT gender, age, city
FROM "EMPLOYEE DATA"
WHERE gender = 'Female'
AND age BETWEEN 25 AND 35
AND city = 'Pune';







--masters and PHD students in 2017 from Bangalore, returning the joininh year as graduation year and city as location

SELECT Education, joiningyear AS "Graduation Year", city AS "Location"
FROM "EMPLOYEE DATA"
WHERE education BETWEEN 'Masters' AND 'PHD'
AND joiningyear = 2017
AND city = 'Bangalore';







--MASTERS STUDENTS BETWWEN THE YEARS 2013 AND 2015 WHO STUDIED IN PUNE
SELECT Education, joiningyear, city
FROM "EMPLOYEE DATA"
WHERE education = 'Masters'
AND joiningyear BETWEEN 2013 AND 2015
AND city = 'Pune';







--bachelors students between the age of 30 and 37 that studied at bangalore inthe year 2013
SELECT education, age, city, joiningyear
FROM "EMPLOYEE DATA"
WHERE education = 'Bachelors'
AND age BETWEEN 30 AND 37
AND city = 'Bangalore'
AND joiningyear = 2013;


