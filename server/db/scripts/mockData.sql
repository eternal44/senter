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

TODO: write a function to create 70 items instead.
*/


INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item1', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item2', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item3', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item4', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item5', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item6', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item7', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item8', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item9', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item10', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item11', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item12', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item13', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item14', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item15', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item16', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item17', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item18', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item19', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item20', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item21', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item22', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item23', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item24', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item25', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item26', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item27', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item28', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item29', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item30', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item31', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item32', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item33', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item34', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item35', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item36', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item37', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item38', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item39', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item40', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item41', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item42', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item43', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item44', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item45', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item46', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item47', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item48', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item49', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item50', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item51', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item52', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item53', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item54', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item55', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item56', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item57', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item58', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item59', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item60', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item61', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item62', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item63', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item64', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item65', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item66', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item67', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item68', 'Nike', 'http://sneakerbardetroit.com/wp-content/uploads/2014/06/nike-free-flyknit-chukka-bright-crimson-available-now-700x366.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item69', 'Apple', 'http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item70', 'Fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');

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


