CREATE TABLE TFI (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    hero VARCHAR(50),
    director VARCHAR(50),
    genre VARCHAR(50),
    language VARCHAR(30),
    budget INT,
    collection INT,
    release_year INT
);
INSERT INTO TFI (movie_id, title, hero, director, genre, language, budget, collection, release_year)
VALUES
(1, 'RRR', 'N. T. Rama Rao Jr.', 'S.S. Rajamouli', 'Action', 'Telugu', 500, 1200, 2022),
(2, 'Pushpa', 'Allu Arjun', 'Sukumar', 'Action', 'Telugu', 150, 350, 2021),
(3, 'Bahubali', 'Prabhas', 'S.S. Rajamouli', 'Epic', 'Telugu', 250, 1800, 2015),
(4, 'Jersey', 'Nani', 'Gautham Tinnanuri', 'Drama', 'Telugu', 40, 80, 2019),
(5, 'KGF', 'Yash', 'Prashanth Neel', 'Action', 'Kannada', 100, 1200, 2018),
(6, 'Kantara', 'Rishab Shetty', 'Rishab Shetty', 'Thriller', 'Kannada', 20, 450, 2022),
(7, 'Eega', 'Nani', 'S.S. Rajamouli', 'Fantasy', 'Telugu', 25, 120, 2012);
select * from TFI;
select director, sum(collection) as Total_Collection
		from TFI
		group by director;
select genre, sum(collection) as Total_Collection 
        from TFI
        group by genre;
select director, sum(collection) as Total_Collection
		from TFI
		group by director;
select language, sum(ticket_price) as Total_Price 
        from TFI t
		join movies m
		on t.movie_id = m.movie_id
        group by language;