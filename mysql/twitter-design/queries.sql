USE twitter_db;

-- Get users that are following user with ID 1
SELECT follower_id FROM followers WHERE following_id = 1;

-- Get number of users that are following user with ID 1
SELECT COUNT(follower_id) AS followers FROM followers WHERE following_id=1;

-- Top 3 users with most followers
SELECT following_id, COUNT(follower_id) AS followers
FROM followers
GROUP BY following_id
ORDER BY followers DESC
LIMIT 3;

-- Top 3 users with most followers using JOIN
SELECT following_id, users.user_handle, users.first_name, users.last_name, COUNT(follower_id) AS followers
FROM followers
INNER JOIN users ON users.user_id = followers.following_id
GROUP BY following_id
ORDER BY followers DESC
LIMIT 3;


-- Calculate tweets per user
SELECT user_id, COUNT(*) AS tweet_count
FROM tweets
GROUP BY user_id;

-- Get users with more than 2 followers
SELECT following_id, COUNT(*) as followers
FROM followers
GROUP BY following_id
HAVING followers > 2;

-- Disable safe updates 
SET SQL_SAFE_UPDATES = 0;

-- Delete tweets from user with ID 1
DELETE FROM tweets WHERE user_id = 1;

-- Delete tweets which text contains the 'MySQL' text
DELETE FROM tweets WHERE tweet_text LIKE '%MySQL%';

-- Update number of comments for the tweet with ID 2
UPDATE tweets SET num_comments = num_comments + 1 WHERE tweet_id = 2;

-- Replace text
UPDATE tweets SET tweet_text = REPLACE(tweet_text, 'MySQL', 'My SQL')
WHERE tweet_text LIKE '%MySQL%';

-- Get like number per tweet
SELECT tweet_id, COUNT(*) as likes
FROM tweet_likes
GROUP BY tweet_id;