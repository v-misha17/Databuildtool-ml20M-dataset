

WITH src_ratings AS (
  SELECT * FROM MOVIELENS.DEV.src_ratings
)

SELECT
  user_id,
  movie_id,
  rating,
  rating_timestamp
FROM src_ratings
WHERE rating IS NOT NULL


  AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM MOVIELENS.DEV.fct_ratings)
