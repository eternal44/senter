/*
NOTE:
User types are defined by their demographics
  like: suburban mother

Votable types are defined by their categories
  ex: jeans

Categories are not to be confused with tags. Tags identify votables in a much more
detailed & granular manner.  You can think of categories a general description for what the item is and tags as a specific description of the item.
  ex:  gucci, leather, jeans
*/

/*
#########
# USERS #
#########
*/
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  pinterest_id BIGINT,
  email VARCHAR(50) UNIQUE,
  name VARCHAR(30),
  vote_weight INTEGER DEFAULT 1
);

DROP TABLE IF EXISTS demographics CASCADE;
CREATE TABLE demographics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30)
);

DROP TABLE IF EXISTS user_demographics CASCADE;
CREATE TABLE user_demographics (
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  demographic_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (demographic_id) REFERENCES demographics(id)
);


/*
############
# VOTABLES # 
############
*/

DROP TABLE IF EXISTS votables CASCADE;
CREATE TABLE votables (
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  pinterest_url VARCHAR(250),
  pinterest_note VARCHAR(250),
  image_url VARCHAR(250),
  FOREIGN KEY (user_id) REFERENCES users(id)
);


/*
#########
# VOTES #
#########
*/

DROP TABLE IF EXISTS votes CASCADE;
CREATE TABLE votes (
  id SERIAL PRIMARY KEY,
  votable_id INTEGER,
  voter INTEGER,
  upvote INTEGER DEFAULT 0,
  downvote INTEGER DEFAULT 0,
  FOREIGN KEY (votable_id) REFERENCES votables(id) ON DELETE CASCADE,
  FOREIGN KEY (voter) REFERENCES users(id)
);


/*
########
# TAGS #
########
*/

DROP TABLE IF EXISTS tag_types CASCADE;
CREATE TABLE tag_types (
  id SERIAL PRIMARY KEY,
  tag VARCHAR(30)
);

DROP TABLE IF EXISTS votable_tags CASCADE;
CREATE TABLE votable_tags (
  id SERIAL PRIMARY KEY,
  votable_id INTEGER,
  tag_id INTEGER,
  FOREIGN KEY (votable_id) REFERENCES votables(id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id) REFERENCES tag_types(id) ON DELETE CASCADE
);


/*
######################
# VOTABLE CATEGORIES #
######################
*/
DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30)
);

DROP TABLE IF EXISTS votable_categorizations CASCADE;
CREATE TABLE votable_categorizations (
  id SERIAL PRIMARY KEY,
  votable_id INTEGER,
  category_id INTEGER,
  FOREIGN KEY (votable_id) REFERENCES votables(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);


/* CREATE INDEX v_owner ON votables (owner_id); */
/* CREATE INDEX votable ON votes (votable_id); */
/* CREATE INDEX votable ON votable_categories (votable_id); */
/* CREATE INDEX votable ON votable_tags (votable_id); */
/* CREATE INDEX user_demographics ON user_demographics(demographic_type_id) */
