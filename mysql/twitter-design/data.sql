USE twitter_db;

INSERT INTO users(user_handle, email_address, first_name, last_name, phonenumber)
VALUES ('mpdlc','mayra@test.com','Mayra','Palomares','999999999'),
		('ana','ana@test.com','Ana','Perez','999599999'),
		('jj','jj@test.com','JJ','Palomares','992999999'),
		('gerson','gerson@test.com','David','Guzman','999999499'),
		('alejandra','alejandra@test.com','Alejandra','De la Cruz','999958999'),
		('ricardo','ricardo@test.com','Jhon','Doe','999799999');

INSERT INTO followers(follower_id, following_id)
VALUES  (1,2),
		(1,3),
        (1,5),
		(2,1),
        (2,3),
        (2,4),
		(3,1),
        (3,5),
		(4,1),
        (4,2),
        (4,3),
		(5,1);

INSERT INTO tweets(user_id, tweet_text)
VALUES (1, 'My first tweet'),
		(2,'MySQL rocks!'),
		(3, 'I like to tweet'),
		(4,'Writing queries'),
		(5, 'This is a test tweet'),
		(1,'Time to practice'),
		(2, 'My second tweet'),
		(3,'Testing...');

INSERT INTO tweet_likes(user_id, tweet_id)
VALUES (1, 3),
		(2, 4),
        (4, 3),
        (1, 4);