-- 1. Create the Netflix Database
CREATE DATABASE netflix_db;

-- 2. Display All Records from the Netflix Table
SELECT * FROM netflix;

-- 3. Count Total Number of Records
SELECT COUNT(*) FROM netflix;

-- 4. Count Total Number of Shows
SELECT COUNT(*) AS total_shows
FROM netflix;

-- 5. Count Movies and TV Shows
SELECT type,
COUNT(*) AS total
FROM netflix
GROUP BY type;

-- 6. Find the Latest Release Year
SELECT MAX(release_year)
FROM netflix;

-- 7. Find the Oldest Release Year
SELECT MIN(release_year)
FROM netflix;

-- 8. Display All Movies
SELECT *
FROM netflix
WHERE type='Movie';

-- 9. Display All TV Shows
SELECT *
FROM netflix
WHERE type='TV Show';

-- 10. Top 10 Countries with the Highest Number of Netflix Titles
SELECT country,
COUNT(*) AS total
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- 11. Count Titles by Rating
SELECT rating,
COUNT(*) AS total
FROM netflix
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total DESC;

-- 12. Display Titles Released After 2020
SELECT title, release_year
FROM netflix
WHERE release_year > 2020;

-- 13. Display Directors of Titles Released After 2020
SELECT director, release_year
FROM netflix
WHERE release_year > 2020;

-- 14. Find Titles Directed by Adam Salky
SELECT title
FROM netflix
WHERE director='Adam Salky';

-- 15. Count Number of Titles Released Each Year
SELECT release_year,
COUNT(*) AS total
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- 16. Count Titles for Each Rating Category
SELECT rating,
COUNT(*) AS total
FROM netflix
GROUP BY rating;

-- 17. Top 10 Directors with the Most Titles
SELECT director,
COUNT(*) AS total
FROM netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;

-- 18. Display All Titles from India
SELECT title
FROM netflix
WHERE country LIKE '%India%';

-- 19. Top 10 Most Popular Genres
SELECT listed_in,
COUNT(*) AS total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- 20. Display Titles Added to Netflix in 2021
SELECT title
FROM netflix
WHERE date_added LIKE '%2021';

-- 21. Count Titles with Missing Director Information
SELECT COUNT(*)
FROM netflix
WHERE director IS NULL;

-- 22. Count Movies and TV Shows by Country
SELECT country,
type,
COUNT(*) AS total
FROM netflix
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY country;












