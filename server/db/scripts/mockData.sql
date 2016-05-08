/*
#########
# USERS #
#########
*/
INSERT INTO users (email, name) VALUES ('example1@example.com', 'name1');
INSERT INTO users (email, name) VALUES ('example2@example.com', 'name2');

INSERT INTO demographics (name) VALUES ('hipster');
INSERT INTO demographics (name) VALUES ('hiphop');
INSERT INTO demographics (name) VALUES ('suburban mom');

INSERT INTO user_demographics (user_id, demographic_id) VALUES (1,1);
INSERT INTO user_demographics (user_id, demographic_id) VALUES (1,2);
INSERT INTO user_demographics (user_id, demographic_id) VALUES (2,3);

/*
############
# VOTABLES #
############
*/
INSERT INTO votables (name, user_id) VALUES ('item1', 1);
INSERT INTO votables (name, user_id) VALUES ('item2', 1);
INSERT INTO votables (name, user_id) VALUES ('item3', 1);
INSERT INTO votables (name, user_id) VALUES ('item4', 2);
INSERT INTO votables (name, user_id) VALUES ('item5', 2);
INSERT INTO votables (name, user_id) VALUES ('item6', 2);

/*
#########
# VOTES #
#########
*/
INSERT INTO votes (votable_id, voter, upvote) VALUES (1,1,1);
INSERT INTO votes (votable_id, voter, downvote) VALUES (1,2,2);

/*
########
# TAGS #
########
*/
INSERT INTO tag_types (tag) VALUES ('gucci');
INSERT INTO tag_types (tag) VALUES ('armani');
INSERT INTO tag_types (tag) VALUES ('exchange');
INSERT INTO tag_types (tag) VALUES ('jeans');
INSERT INTO tag_types (tag) VALUES ('hat');

INSERT INTO votable_tags (votable_id, tag_id) VALUES (1,1);
INSERT INTO votable_tags (votable_id, tag_id) VALUES (1,2);
INSERT INTO votable_tags (votable_id, tag_id) VALUES (1,3);
INSERT INTO votable_tags (votable_id, tag_id) VALUES (1,4);
INSERT INTO votable_tags (votable_id, tag_id) VALUES (1,5);


/*
######################
# VOTABLE CATEGORIES #
######################
*/

INSERT INTO categories (name) VALUES ('jeans');
INSERT INTO categories (name) VALUES ('shirt');
INSERT INTO categories (name) VALUES ('hat');


