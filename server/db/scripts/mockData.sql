/*
#########
# USERS #
#########
*/




/* 
140808063257991824

insert pinterest IDs & other user info
 */


INSERT INTO users (email, name, pinterest_id) VALUES ('example1@example.com', 'name1', 140808063257991);
INSERT INTO users (email, name, pinterest_id) VALUES ('example2@example.com', 'name2', 240808063257991);

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

TODO: write a function to create 70 items instead.
*/


INSERT INTO votables (user_id, pinterest_note, pinterest_url, image_url) VALUES (1, 'MENS LOAFER STYLE BROWN DRESS SHOES.', 'https://www.pinterest.com/pin/140807925829199296/', 'https://s-media-cache-ak0.pinimg.com/originals/c9/89/76/c989766183bd224bd5ef1301862e6396.jpg');
INSERT INTO votables (user_id, pinterest_note, pinterest_url, image_url) VALUES (1, '.', 'https://www.pinterest.com/pin/140807925829199294/', 'https://s-media-cache-ak0.pinimg.com/originals/3a/a1/cc/3aa1cce85a00e36d4df7c4955ee9a34d.jpg');

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


