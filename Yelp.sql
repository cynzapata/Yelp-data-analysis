
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

--4. For each table and column listed below, display the smallest (minimum), largest (maximum), and average (mean) value for the following fields:

	--i. Table: Review, Column: Stars
	
		--min: 1		max:5		avg:3.7082 

		Select Min(Stars)
        From Review
        Select Max(Stars)
        From Review
        Select Avg(Stars)
        From Review
	
	--ii. Table: Business, Column: Stars
	
		--min:1		max:5		avg:3.6549 
        Select Min(Stars)
        From Business
        Select Max(Stars)
        From Business
		Select Avg(Stars)
        From Business
	
	--iii. Table: Tip, Column: Likes
	
		--min:0		max:2		avg:0.0144
	
    Select Min(Likes)
    From Tip
    Select Max(Likes)
    From Tip
    Select Avg(Likes)
    From Tip

	
	--iv. Table: Checkin, Column: Count
	
		--min:1		max:53		avg:1.9414 

	Select Min(Count)
    From Checkin
    Select Max(Count)
    From Checkin
    Select Avg(Count)
    From Checkin
	
	--v. Table: User, Column: Review_count
	
		--min:0		max:2000	avg:24.2995 

    Select Min(Review_count)
    From User
    Select Max(Review_count)
    From User
    Select Avg(Review_count)
    From User
		
--5. List the cities with the most reviews in descending order:

	SQL code used to arrive at answer:
	Select Review_count, City
	From Business
	Order by Review_count desc

--7. Find the top 3 users based on their total number of reviews:
		
	SQL code used to arrive at answer:
	Select Review_count, Name
	From User
	Order by Review_count desc

--9. Are there more reviews with the word "love" or with the word "hate" in them?

	--Answer: There are more review with the word love in them

	
	--SQL code used to arrive at answer:
    Select Count(Text)
    From Review
    Where Text like '%love%'
    --The Count is 1780
    Select Count(Text)
    From Review
    Where Text like '%hate%'
    --The Count is 232
    

--10. Find the top 10 users with the most fans:

	SQL code used to arrive at answer:
	Select Fans, Name
	From User
	Order by Fans desc



