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


INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item1', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item2', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item3', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item4', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item5', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item6', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item7', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item8', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item9', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item10', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item11', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item12', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item13', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item14', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item15', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item16', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item17', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item18', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item19', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item20', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item21', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item22', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item23', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item24', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item25', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item26', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item27', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item28', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item29', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item30', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item31', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item32', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item33', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item34', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item35', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item36', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item37', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item38', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item39', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item40', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item41', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item42', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item43', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item44', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item45', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item46', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item47', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item48', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item49', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item50', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item51', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item52', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item53', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item54', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item55', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item56', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item57', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item58', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item59', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item60', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item61', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item62', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item63', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item64', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item65', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item66', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item67', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item68', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item69', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');
INSERT INTO votables (user_id, name, make, photo_url) VALUES (1, 'item70', 'fitbit', 'https://static0.fitbit.com/simple.b-cssdisabled-png.h7f00310d787c49e7cce9ed4a3651c911.pack?items=%2Fcontent%2Fassets%2Fstore2%2Fimages%2Fproducts-retina%2Fcharge%2Fcharge_black_side.png');

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


