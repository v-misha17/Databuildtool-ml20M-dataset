WITH ratings AS (
  SELECT DISTINCT user_id FROM MOVIELENS.DEV.src_ratings
),

tags AS (
  SELECT DISTINCT user_id FROM MOVIELENS.DEV.src_tags
)

SELECT DISTINCT user_id
FROM (
  SELECT * FROM ratings
  UNION
  SELECT * FROM tags
)