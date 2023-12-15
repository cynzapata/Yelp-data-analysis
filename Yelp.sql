
--1. Profiling

--Attribute Records
Select *
From attribute

--Business Records
Select *
From business

--Category Records
Select *
From category

--Checkin Records 
Select *
From checkin

--Elite_Years Records
Select *
From elite_years

--Friend Records
Select *
From friend

--Hours Records 
Select *
From hours

--Photo Records
Select *
From photo

--Review Records 
Select *
From review

--Tip Records
Select *
From tip

--User Records
Select *
From user

--3. Are there any columns with null values in the Users table? Indicate "yes," or "no."

--Answer: No
	
--SQL code used to arrive at answer:
Select *
From user
Where id || name || review_count || yelping_since || useful  ||funny  || cool ||fans ||
average_stars || compliment_hot || compliment_more || Compliment_profile || compliment_cute ||
compliment_list || compliment_note || compliment_plain || compliment_cool || compliment_funny ||
compliment_writer || compliment_photos is NULL


