-- 1 Average Price by Airline and Route Combined
SELECT 
    airline,
    source_city,
    destination_city,
    AVG(price) AS average_price
FROM 
    ia_cleaned
GROUP BY 
    airline, source_city, destination_city
ORDER BY 
    average_price DESC;

-- 2 Average Price by Route
SELECT 
    Source_city,
    Destination_city,
    ROUND(AVG(Price), 2) AS Average_Price,
    COUNT(*) AS Flight_Count
FROM ia_cleaned
WHERE Price IS NOT NULL
GROUP BY Source_city, Destination_city
ORDER BY Average_Price DESC;

-- 3 Average Price by Airline
SELECT 
    Airline,
    ROUND(AVG(Price), 2) AS Average_Price,
    COUNT(*) AS Flight_Count
FROM ia_cleaned
WHERE Price IS NOT NULL
GROUP BY Airline
ORDER BY Average_Price DESC;

-- 4 Top-Rated Flights (Top 5 Most Expensive)
SELECT 
    Airline,
    Flight,
    Source_city,
    Destination_city,
    Departure_time,
    Arrival_time,
    Stops,
    Duration,
    Price
FROM ia_cleaned
WHERE Price IS NOT NULL
ORDER BY Price DESC
LIMIT 5;

-- 5 Lowest-Rated Flights (Top 5 Cheapest)
SELECT 
    Airline,
    Flight,
    Source_city,
    Destination_city,
    Departure_time,
    Arrival_time,
    Stops,
    Duration,
    Price
FROM ia_cleaned
WHERE Price IS NOT NULL
ORDER BY Price ASC
LIMIT 5;

-- 6 High-Priced Flights with Poor Quality
SELECT 
    Airline,
    Flight,
    Source_city,
    Destination_city,
    Departure_time,
    Arrival_time,
    Stops,
    Duration,
    Price,
    Days_left
FROM flights
WHERE Price > 20000
  AND Stops IN ('one', 'two_or_more')
  AND Duration > 5
  AND Price IS NOT NULL
ORDER BY Price DESC
LIMIT 10;

-- 7 Low-Priced Flights with High Quality
SELECT 
    Airline,
    Flight,
    Source_city,
    Destination_city,
    Departure_time,
    Arrival_time,
    Stops,
    Duration,
    Price,
    Days_left
FROM flights
WHERE Price < 5200
  AND Stops = 'zero'
  AND Duration < 3
  AND Price IS NOT NULL
ORDER BY Price ASC
LIMIT 10;

-- 8 Most Expensive Flights
SELECT *
FROM ia_cleaned
WHERE price = (SELECT MAX(price) FROM ia_cleaned);

-- 9 Cheapest Flights
SELECT *
FROM ia_cleaned
WHERE price = (SELECT MIN(price) FROM ia_cleaned);

-- 10 Average Price per Route
SELECT source_city, destination_city, ROUND(AVG(price), 2) AS avg_route_price
FROM ia_cleaned
GROUP BY source_city, destination_city
ORDER BY avg_route_price DESC;

--  11  Most Frequent Routes
SELECT source_city, destination_city, COUNT(*) AS flight_count
FROM ia_cleaned
GROUP BY source_city, destination_city
ORDER BY flight_count DESC
LIMIT 5;

-- 12 Flight Count by Airline
SELECT Airline, COUNT(*) AS Total_Flights
FROM ia_cleaned
GROUP BY Airline
ORDER BY Total_Flights DESC;

-- 13 Flight Count by Number of Stops
SELECT Stops, COUNT(*) AS Total_Flights
FROM ia_cleaned
GROUP BY Stops
ORDER BY Stops;

-- 14 Average Price by Class (Economy vs Business)
SELECT Class, ROUND(AVG(Price), 2) AS Avg_Price
FROM ia_cleaned
GROUP BY Class
ORDER BY Avg_Price;

-- 15 Top 5 Cheapest Economy Flights
SELECT *
FROM ia_cleaned
WHERE Class = 'Economy'
ORDER BY Price ASC
LIMIT 5;

-- 16 Top 5 Most Expensive Business Flights
SELECT *
FROM ia_cleaned
WHERE Class = 'Business'
ORDER BY Price DESC
LIMIT 5;

-- 17 flights with Shortest Duration
SELECT *
FROM ia_cleaned
ORDER BY Duration ASC
LIMIT 5;

-- 18 Flights with the Least Days Left
SELECT *
FROM ia_cleaned
ORDER BY Days_left ASC
LIMIT 5;

-- 19 Rank Airlines by Average Price (Cheapest to Most Expensive)
SELECT Airline, ROUND(AVG(Price), 2) AS Avg_Price,
       RANK() OVER (ORDER BY AVG(Price)) AS Price_Rank
FROM ia_cleaned
GROUP BY Airline;

-- 20 Top 3 Cheapest Flights for Each Route
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY Source_city, Destination_city ORDER BY Price ASC) AS route_rank
    FROM ia_cleaned
) AS ranked_flights
WHERE route_rank <= 3;

-- 21 Classify Flights Based on Price Tiers
SELECT *,
  CASE
    WHEN Price < 3000 THEN 'Low Cost'
    WHEN Price BETWEEN 3000 AND 7000 THEN 'Moderate'
    ELSE 'Expensive'
  END AS price_category
FROM ia_cleaned
ORDER BY Price;

-- 22 Flights with Above-Average Price per Airline
WITH avg_prices AS (
    SELECT Airline, AVG(Price) AS avg_price
    FROM ia_cleaned
    GROUP BY Airline
)
SELECT f.*
FROM ia_cleaned f
JOIN avg_prices a ON f.Airline = a.Airline
WHERE f.Price > a.avg_price
ORDER BY f.Airline, f.Price DESC;

-- 23 Show Price Trend Based on Days Left (Grouped Buckets)
SELECT 
  CASE
    WHEN Days_left <= 7 THEN '0-7 days'
    WHEN Days_left <= 15 THEN '8-15 days'
    WHEN Days_left <= 30 THEN '16-30 days'
    ELSE '30+ days'
  END AS days_bucket,
  ROUND(AVG(Price), 2) AS avg_price
FROM ia_cleaned
GROUP BY days_bucket
ORDER BY avg_price;

-- 24 Detect Duplicate Flights (Same Airline + Route + Class + Days Left)
SELECT Airline, Source_city, Destination_city, Class, Days_left, COUNT(*) AS duplicates
FROM ia_cleaned
GROUP BY Airline, Source_city, Destination_city, Class, Days_left
HAVING COUNT(*) > 1;

