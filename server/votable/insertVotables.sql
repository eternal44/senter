INSERT INTO votables (user_id, pinterest_url, pinterest_note, image_url) SELECT
  ${user_id}, ${pinterest_url},${pinterest_note}, ${image_url} 

WHERE NOT EXISTS (
  SELECT pinterest_url from votables where pinterest_url=${pinterest_url}
)
