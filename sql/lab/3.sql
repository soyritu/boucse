-- a.Find movies made after 2001
select mov_title from Movies
    where mov_year > 2001;
/* b.Find movies made by Hanson after 2000 */
select mov_title from Movies
    where mov_director = ‘Hanson’ and mov_year > 2000;
-- c. Find all movies and their ratings.
select mov_title,mov_rating from Movies;
-- d.  Find all actors and directors
select actor_name,mov_director from Actors,Directors;
-- e. Find the movies name when directors in ABC with acor EFG
select a.mov_title from Acts a, Movies m
    where a.actor_name = ‘EFG’ and m.mov_director = ‘ABC’; 