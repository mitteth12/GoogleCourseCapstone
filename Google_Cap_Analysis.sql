use GOOGLE_CAP

SELECT * FROM cycle_info

SELECT COUNT(member_casual)
FROM cycle_info
WHERE member_casual = 'member' #273550

SELECT COUNT(member_casual)
FROM cycle_info
WHERE member_casual = 'casual' #255938

SELECT member_casual, rideable_type, count(rideable_type) as no_of_riders
FROM cycle_info
GROUP BY member_casual, rideable_type
ORDER BY member_casual

SELECT member_casual, ROUND(AVG(total_ride_time),2) AS avg_ride_time
FROM cycle_info
GROUP BY member_casual
HAVING avg_ride_time > 0
ORDER BY avg_ride_time DESC

SELECT member_casual, rideable_type, ROUND(AVG(total_ride_time),2) AS avg_ride_time
FROM cycle_info
GROUP BY member_casual, rideable_type
HAVING avg_ride_time > 0
ORDER BY member_casual, avg_ride_time DESC

UPDATE cycle_info #https://www.sqltutorial.org/sql-string-functions/sql-replace/
SET 
    total_ride_time = REPLACE(total_ride_time, ':', '.');
    
UPDATE cycle_info
SET 
	total_ride_time = REPLACE(total_ride_time, '0.', '.');
    
UPDATE cycle_info
SET 
	total_ride_time = REPLACE(total_ride_time, '#', '');
    
    



