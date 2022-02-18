-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT * FROM vine_table;

--Filter the data and create a new DataFrame or table to retrieve all the rows where the total_votes
--count is equal to or greater than 20 to pick reviews that are more likely to be helpful and
--to avoid having division by zero errors later on.
CREATE TABLE total_votes AS
SELECT * FROM vine_table
WHERE total_votes>=20;

SELECT * FROM total_votes;

--Filter the new DataFrame or table created in Step 1 and create a new DataFrame or table to
--retrieve all the rows where the number of helpful_votes divided by total_votes is equal to
--or greater than 50%.
CREATE TABLE vine_helpful_total_votes as
SELECT * FROM total_votes
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT * FROM vine_helpful_total_votes;

--Filter the DataFrame or table created in Step 2, and create a new DataFrame or table that retrieves
--all the rows where a review was written as part of the Vine program (paid), vine == 'Y'.
CREATE TABLE vine_reviews_paidprogram as
SELECT * FROM vine_helpful_total_votes
WHERE vine = 'Y';

SELECT * FROM vine_reviews_paidprogram;

--Repeat Step 3, but this time retrieve all the rows where the review was not part of the
--Vine program (unpaid), vine == 'N'.
CREATE TABLE vine_reviews_unpaidprogram AS
SELECT * FROM vine_helpful_total_votes
WHERE vine = 'N';

SELECT * FROM vine_reviews_unpaidprogram

-- Determine the total number of reviews, 
--the number of 5-star reviews, and 
--the percentage of 5-star reviews for 
--the two types of review (paid vs unpaid).

SELECT a.vine , COUNT(a.review_id) AS totalreview,((SELECT COUNT(star_rating)
FROM vine_table WHERE star_rating = 5 AND a.vine= vine) * 100 / COUNT(a.review_id)) 
AS percentage_vine_Review ,
(SELECT COUNT(star_rating) AS five_star_vine_review
FROM vine_table
WHERE star_rating = 5 AND a.vine= vine)
FROM vine_table a
GROUP BY a.vine;





