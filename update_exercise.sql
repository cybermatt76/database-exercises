USE codeup_test_db;

-- SELECT all albums
SELECT * FROM albums;

-- UPDATE all albums to be 10 times more popular
UPDATE albums
SET sales = sales * 10;

-- SELECT all albums to verify sales update
SELECT * FROM albums;

-- UPDATE albums before 1980 to the 1800s
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

-- SELECT all albums released before 1980 to verify release date update
SELECT * FROM albums
WHERE release_date < 1980;

-- UPDATE all albums by Michael Jackson to be by Peter Jackson
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

-- SELECT all albums by Peter Jackson to verify artist update
SELECT * FROM albums
WHERE artist = 'Peter Jackson';
