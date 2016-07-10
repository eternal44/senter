WITH s as (
  SELECT id
  FROM users
  WHERE pinterest_id=${user_pinterest_id}
  ), i as (
  INSERT INTO users (pinterest_id)
  SELECT ${user_pinterest_id}
  WHERE NOT EXISTS (SELECT 1 FROM s)
  RETURNING id
)
SELECT id FROM i
UNION ALL
SELECT id FROM s
