-- CREATİON OF TABLES

CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(100) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	is_active BOOLEAN
);
-- select * from users;

CREATE TABLE IF NOT EXISTS categories (
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- SELECT * FROM categories; 

CREATE TABLE IF NOT EXISTS posts(
	post_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL,
	category_id INTEGER NOT NULL,
	title VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	view_count INTEGER DEFAULT 0,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	is_published BOOLEAN,
	FOREIGN KEY (user_id) REFERENCES users (user_id),
 FOREIGN KEY (category_id) REFERENCES categories (category_id)
);
-- SELECT * FROM posts;

CREATE TABLE comments(
	comment_id SERIAL PRIMARY KEY,
	post_id INTEGER REFERENCES posts(post_id) NOT NULL,
	user_id  INTEGER REFERENCES users(user_id),
	comment TEXT NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	is_confirmed BOOLEAN

);
-- SELECT * FROM comments;

-- DATA ADDİTİON---

-- Adding data for the "users" table:
insert into users (user_id, username, email, creation_date, is_active) values (1, 'lmcsaul0', 'cgrenville0@woothemes.com', '2019/03/09', false);
insert into users (user_id, username, email, creation_date, is_active) values (2, 'njoan1', 'chemms1@dailymotion.com', '2022/06/02', true);
insert into users (user_id, username, email, creation_date, is_active) values (3, 'pbeenham2', 'svurley2@shareasale.com', '2021/06/12', false);
insert into users (user_id, username, email, creation_date, is_active) values (4, 'jgadman3', 'bforre3@craigslist.org', '2019/06/17', true);
insert into users (user_id, username, email, creation_date, is_active) values (5, 'wrathmell4', 'vhubbart4@icq.com', '2021/05/29', false);
insert into users (user_id, username, email, creation_date, is_active) values (6, 'lsketcher5', 'lwhittall5@flickr.com', '2020/05/27', false);
insert into users (user_id, username, email, creation_date, is_active) values (7, 'ssivess6', 'jfandrey6@bloomberg.com', '2019/02/27', true);
insert into users (user_id, username, email, creation_date, is_active) values (8, 'sgillooly7', 'dparadin7@bbc.co.uk', '2021/09/22', false);
insert into users (user_id, username, email, creation_date, is_active) values (9, 'dhabgood8', 'abreacher8@e-recht24.de', '2021/02/18', true);
insert into users (user_id, username, email, creation_date, is_active) values (10, 'pcraddock9', 'mstapleton9@51.la', '2020/01/07', false);
SELECT * FROM users;


-- Adding data for the "categories" table:
insert into categories (category_id, name, creation_date) values (1, 'Music', '2022/09/04');
insert into categories (category_id, name, creation_date) values (2, 'Art', '2021/04/09');
insert into categories (category_id, name, creation_date) values (3, 'Technology & Precast', '2019/07/13');
insert into categories (category_id, name, creation_date) values (4, 'Science', '2020/01/13');
insert into categories (category_id, name, creation_date) values (5, 'Dance', '2019/07/18');
insert into categories (category_id, name, creation_date) values (6, 'Theatre', '2022/07/18');
insert into categories (category_id, name, creation_date) values (7, 'Opera', '2020/06/10');

-- SELECT * FROM categories;
-- Adding data for the "posts" table:
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 4, 7, 'Daydreams', 'vivamus in felis eu sapien cursus vestibulum proin eu mi', 203, '2021/02/17', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 4, 3, 'Holding, The', 'odio cras mi pede malesuada in imperdiet et commodo vulputate', 473, '2019/08/25', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 4, 5, 'New Jersey Drive', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 399, '2021/06/29', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 7, 7, 'Queen of Versailles, The', 'sem praesent id massa id nisl venenatis lacinia aenean sit', 418, '2019/05/21', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 1, 1, 'Ruhr', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris', 536, '2022/08/09', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 7, 'Expelled: No Intelligence Allowed', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 43, '2020/11/03', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 1, 6, 'Bronx Tale, A', 'a suscipit nulla elit ac nulla sed vel enim sit', 252, '2019/06/21', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 2, 3, 'Bon Voyage, Charlie Brown (and Don''t Come Back!)', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 351, '2020/06/12', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 10, 1, 'Brighton Beach Memoirs', 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 293, '2019/04/24', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 3, 'Apart from You (After Our Separation) (Kimi to wakarete)', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 150, '2022/12/17', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (11, 8, 1, 'Chocolate Soldier, The', 'sit amet nulla quisque arcu libero rutrum ac lobortis vel', 620, '2020/07/13', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (12, 8, 2, 'The Boy in the Mirror', 'suspendisse ornare consequat lectus in est risus auctor sed tristique', 164, '2021/05/25', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 10, 3, 'Connie and Carla', 'id ligula suspendisse ornare consequat lectus in est risus auctor', 581, '2020/04/29', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 7, 6, '101 Reykjavik (101 Reykjavík)', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus', 111, '2020/08/16', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (15, 6, 7, 'Fluffer, The', 'est quam pharetra magna ac consequat metus sapien ut nunc', 251, '2021/10/16', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (16, 8, 2, 'Dead of the Nite', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc', 613, '2021/11/27', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (17, 8, 4, 'Night People', 'lacinia aenean sit amet justo morbi ut odio cras mi', 639, '2019/10/16', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (18, 5, 1, 'In Therapy (Divã)', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut', 433, '2019/01/06', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (19, 2, 5, 'Please Vote for Me', 'pellentesque volutpat dui maecenas tristique est et tempus semper est', 309, '2021/06/14', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (20, 1, 1, 'Mount St. Elias', 'mi integer ac neque duis bibendum morbi non quam nec', 387, '2019/06/06', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (21, 9, 3, 'Solaris', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi', 134, '2021/04/25', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (22, 2, 1, 'Volga - Volga', 'ligula suspendisse ornare consequat lectus in est risus auctor sed', 128, '2020/06/20', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (23, 2, 7, 'Wildflowers', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia', 321, '2021/07/22', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (24, 2, 7, 'Special 26', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 390, '2020/08/27', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (25, 10, 1, 'My Man Godfrey', 'morbi non quam nec dui luctus rutrum nulla tellus in', 29, '2021/07/03', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (26, 10, 6, 'Dennis the Menace Christmas, A', 'mi pede malesuada in imperdiet et commodo vulputate justo in', 404, '2022/04/05', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (27, 4, 6, 'Mystic River', 'eleifend quam a odio in hac habitasse platea dictumst maecenas', 552, '2019/10/24', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (28, 1, 3, 'All Over Me', 'morbi non quam nec dui luctus rutrum nulla tellus in', 514, '2020/01/25', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (29, 7, 7, 'King Lines', 'metus aenean fermentum donec ut mauris eget massa tempor convallis', 447, '2020/12/05', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (30, 6, 5, 'Mighty Aphrodite', 'et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 437, '2020/08/10', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (31, 9, 2, 'Our Daily Bread (Unser täglich Brot)', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 31, '2022/03/02', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (32, 4, 7, 'Chaos', 'quam a odio in hac habitasse platea dictumst maecenas ut', 191, '2021/02/03', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (33, 4, 4, 'Map of the Human Heart', 'quis turpis sed ante vivamus tortor duis mattis egestas metus', 518, '2021/02/10', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (34, 1, 1, 'That Certain Summer', 'in sagittis dui vel nisl duis ac nibh fusce lacus', 379, '2020/09/07', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (35, 10, 2, 'Ernest in the Army', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', 72, '2020/02/16', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (36, 10, 1, 'Forest of the Gods (Dievu miskas)', 'risus auctor sed tristique in tempus sit amet sem fusce', 283, '2019/11/09', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (37, 5, 6, 'Easy Money 2 (Snabba cash II)', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque', 428, '2021/10/03', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (38, 10, 1, 'To the Wonder', 'in porttitor pede justo eu massa donec dapibus duis at', 163, '2019/08/23', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (39, 5, 6, 'Deadly Circuit (Mortelle randonnée)', 'nullam orci pede venenatis non sodales sed tincidunt eu felis', 201, '2020/12/18', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (40, 2, 4, 'Carried Away', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam', 101, '2021/06/05', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (41, 2, 5, 'Battle for the Planet of the Apes', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 256, '2022/06/19', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (42, 8, 4, 'American Beauty', 'accumsan felis ut at dolor quis odio consequat varius integer', 96, '2020/07/29', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (43, 7, 2, 'Boudu Saved From Drowning (Boudu sauvé des eaux)', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', 501, '2020/10/19', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (44, 6, 4, 'Trial of Joan of Arc, The (Procès de Jeanne d''Arc)', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 411, '2020/03/18', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (45, 6, 2, 'Eye of God', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 384, '2022/01/30', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (46, 10, 7, 'Clean, Shaven', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 586, '2019/02/21', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (47, 3, 7, 'Dance Flick', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 88, '2020/11/08', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (48, 9, 7, 'Running Scared', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 676, '2019/05/24', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (49, 4, 1, 'Torrente 5: Operación Eurovegas', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 194, '2020/11/02', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (50, 1, 3, 'Conspirators of Pleasure (Spiklenci slasti)', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat', 113, '2022/12/22', true);

-- SELECT * FROM posts;

-- Adding data for the "comments" table;
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (1, 40, 8, 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '2021/04/05', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (2, 8, 8, 'sem praesent id massa id nisl venenatis lacinia aenean sit', '2020/03/22', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (3, 39, 10, 'ut nulla sed accumsan felis ut at dolor quis odio', '2020/12/07', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (4, 20, 6, 'aenean lectus pellentesque eget nunc donec quis orci eget orci', '2022/07/07', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (5, 36, 4, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2020/09/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (6, 8, 10, 'tellus nisi eu orci mauris lacinia sapien quis libero nullam', '2022/08/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (7, 46, 9, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque', '2021/08/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (8, 2, 3, 'in lacus curabitur at ipsum ac tellus semper interdum mauris', '2021/09/07', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (9, 5, 4, 'aenean sit amet justo morbi ut odio cras mi pede', '2020/06/17', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (10, 6, 2, 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare', '2022/12/10', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (11, 10, 9, 'odio condimentum id luctus nec molestie sed justo pellentesque viverra', '2020/09/02', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (12, 21, 3, 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', '2021/06/24', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (13, 3, 1, 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '2021/07/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (14, 48, 5, 'volutpat quam pede lobortis ligula sit amet eleifend pede libero', '2021/06/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (15, 35, 7, 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', '2021/10/30', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (16, 1, 3, 'nunc proin at turpis a pede posuere nonummy integer non', '2020/05/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (17, 17, 9, 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros', '2021/07/03', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (18, 10, 10, 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2022/09/01', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (19, 23, 3, 'tincidunt lacus at velit vivamus vel nulla eget eros elementum', '2020/09/11', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (20, 24, 3, 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', '2020/09/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (21, 37, 8, 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', '2022/10/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (22, 21, 2, 'turpis enim blandit mi in porttitor pede justo eu massa', '2019/05/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (23, 47, 6, 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', '2021/08/01', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (24, 14, 7, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', '2022/02/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (25, 20, 3, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', '2020/10/08', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (26, 17, 5, 'fusce posuere felis sed lacus morbi sem mauris laoreet ut', '2020/09/01', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (27, 14, 4, 'consequat varius integer ac leo pellentesque ultrices mattis odio donec', '2020/02/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (28, 16, 9, 'est lacinia nisi venenatis tristique fusce congue diam id ornare', '2021/08/04', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (29, 43, 9, 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat', '2019/09/01', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (30, 10, 1, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', '2019/05/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (31, 24, 5, 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius', '2021/05/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (32, 3, 9, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at', '2020/03/10', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (33, 45, 3, 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', '2020/10/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (34, 2, 4, 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '2020/01/04', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (35, 7, 4, 'aenean auctor gravida sem praesent id massa id nisl venenatis', '2022/09/05', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (36, 46, 3, 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum', '2019/09/26', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (37, 35, 3, 'tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2022/01/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (38, 11, 7, 'sem sed sagittis nam congue risus semper porta volutpat quam', '2021/07/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (39, 17, 8, 'ut tellus nulla ut erat id mauris vulputate elementum nullam', '2020/09/24', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (40, 11, 4, 'faucibus cursus urna ut tellus nulla ut erat id mauris', '2019/04/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (41, 42, 3, 'volutpat dui maecenas tristique est et tempus semper est quam', '2022/09/17', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (42, 29, 8, 'nisl nunc rhoncus dui vel sem sed sagittis nam congue', '2020/03/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (43, 23, 7, 'nulla sed vel enim sit amet nunc viverra dapibus nulla', '2020/06/22', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (44, 5, 2, 'vel augue vestibulum ante ipsum primis in faucibus orci luctus', '2022/09/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (45, 8, 10, 'ut suscipit a feugiat et eros vestibulum ac est lacinia', '2020/01/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (46, 38, 9, 'sapien sapien non mi integer ac neque duis bibendum morbi', '2021/09/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (47, 50, 9, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', '2022/12/04', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (48, 19, 6, 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat', '2020/03/07', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (49, 16, 9, 'potenti in eleifend quam a odio in hac habitasse platea', '2019/04/25', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (50, 23, 2, 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', '2021/11/20', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (51, 32, 8, 'duis ac nibh fusce lacus purus aliquet at feugiat non', '2021/03/22', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (52, 1, 6, 'orci mauris lacinia sapien quis libero nullam sit amet turpis', '2019/08/13', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (53, 2, 4, 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', '2021/08/29', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (54, 42, 5, 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', '2019/01/02', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (55, 15, 1, 'mi pede malesuada in imperdiet et commodo vulputate justo in', '2022/04/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (56, 44, 8, 'duis mattis egestas metus aenean fermentum donec ut mauris eget', '2020/06/03', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (57, 29, 6, 'sollicitudin mi sit amet lobortis sapien sapien non mi integer', '2022/07/25', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (58, 25, 5, 'orci luctus et ultrices posuere cubilia curae donec pharetra magna', '2022/03/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (59, 13, 9, 'nulla suspendisse potenti cras in purus eu magna vulputate luctus', '2019/09/15', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (60, 26, 3, 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', '2022/05/24', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (61, 10, 10, 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien', '2019/06/15', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (62, 14, 8, 'nulla elit ac nulla sed vel enim sit amet nunc', '2021/02/15', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (63, 1, 1, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2020/12/02', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (64, 50, 5, 'in est risus auctor sed tristique in tempus sit amet', '2021/08/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (65, 46, 3, 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', '2022/11/02', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (66, 16, 7, 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '2019/10/21', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (67, 47, 10, 'et ultrices posuere cubilia curae nulla dapibus dolor vel est', '2022/12/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (68, 18, 5, 'phasellus id sapien in sapien iaculis congue vivamus metus arcu', '2021/10/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (69, 7, 1, 'ac neque duis bibendum morbi non quam nec dui luctus', '2019/04/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (70, 37, 9, 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in', '2021/05/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (71, 11, 6, 'consequat morbi a ipsum integer a nibh in quis justo', '2022/09/22', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (72, 32, 9, 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '2021/02/04', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (73, 39, 4, 'non pretium quis lectus suspendisse potenti in eleifend quam a', '2019/03/22', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (74, 37, 8, 'condimentum id luctus nec molestie sed justo pellentesque viverra pede', '2021/02/16', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (75, 22, 1, 'aenean fermentum donec ut mauris eget massa tempor convallis nulla', '2022/01/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (76, 29, 3, 'magna at nunc commodo placerat praesent blandit nam nulla integer', '2019/01/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (77, 32, 3, 'lobortis ligula sit amet eleifend pede libero quis orci nullam', '2020/11/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (78, 39, 8, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '2020/10/07', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (79, 33, 2, 'lectus vestibulum quam sapien varius ut blandit non interdum in', '2019/07/05', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (80, 34, 7, 'sagittis nam congue risus semper porta volutpat quam pede lobortis', '2019/08/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (81, 25, 9, 'pede libero quis orci nullam molestie nibh in lectus pellentesque', '2022/05/30', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (82, 9, 1, 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec', '2021/12/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (83, 14, 6, 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', '2020/06/06', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (84, 49, 1, 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', '2021/10/29', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (85, 24, 9, 'rutrum nulla nunc purus phasellus in felis donec semper sapien', '2019/12/06', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (86, 30, 3, 'a libero nam dui proin leo odio porttitor id consequat', '2022/12/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (87, 16, 1, 'sagittis nam congue risus semper porta volutpat quam pede lobortis', '2020/05/20', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (88, 12, 10, 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', '2020/05/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (89, 8, 9, 'posuere metus vitae ipsum aliquam non mauris morbi non lectus', '2022/02/11', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (90, 17, 5, 'justo in blandit ultrices enim lorem ipsum dolor sit amet', '2022/08/02', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (91, 25, 1, 'ut erat curabitur gravida nisi at nibh in hac habitasse', '2020/12/01', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (92, 10, 10, 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', '2022/08/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (93, 28, 2, 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', '2019/02/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (94, 34, 4, 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '2021/03/28', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (95, 34, 4, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id', '2020/11/12', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (96, 31, 3, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2020/04/15', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (97, 11, 4, 'donec diam neque vestibulum eget vulputate ut ultrices vel augue', '2019/02/16', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (98, 38, 10, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula', '2019/01/25', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (99, 18, 9, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', '2021/06/22', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (100, 18, 8, 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '2021/04/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (101, 33, 4, 'curae nulla dapibus dolor vel est donec odio justo sollicitudin', '2019/08/31', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (102, 42, 4, 'sem sed sagittis nam congue risus semper porta volutpat quam', '2021/10/21', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (103, 47, 9, 'bibendum morbi non quam nec dui luctus rutrum nulla tellus', '2019/06/04', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (104, 19, 10, 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', '2020/04/09', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (105, 37, 10, 'duis bibendum felis sed interdum venenatis turpis enim blandit mi', '2019/04/10', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (106, 45, 2, 'semper sapien a libero nam dui proin leo odio porttitor', '2019/10/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (107, 27, 2, 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', '2021/04/01', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (108, 19, 2, 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', '2019/03/20', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (109, 36, 4, 'tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2020/12/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (110, 32, 1, 'morbi non lectus aliquam sit amet diam in magna bibendum', '2020/07/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (111, 36, 1, 'eget eleifend luctus ultricies eu nibh quisque id justo sit', '2022/10/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (112, 15, 8, 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '2019/12/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (113, 9, 3, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', '2020/03/13', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (114, 42, 5, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', '2019/04/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (115, 34, 3, 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam', '2020/07/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (116, 35, 8, 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', '2022/07/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (117, 42, 6, 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', '2022/08/14', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (118, 48, 1, 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '2021/01/15', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (119, 40, 5, 'a pede posuere nonummy integer non velit donec diam neque', '2019/09/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (120, 19, 1, 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum', '2021/06/02', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (121, 26, 6, 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', '2021/07/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (122, 17, 9, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '2019/11/07', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (123, 29, 9, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', '2021/07/13', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (124, 4, 1, 'sem duis aliquam convallis nunc proin at turpis a pede', '2020/10/28', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (125, 44, 1, 'in faucibus orci luctus et ultrices posuere cubilia curae nulla', '2021/01/28', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (126, 29, 4, 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum', '2019/05/27', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (127, 46, 6, 'ligula nec sem duis aliquam convallis nunc proin at turpis', '2022/05/09', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (128, 7, 3, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2020/03/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (129, 47, 3, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque', '2019/04/20', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (130, 9, 8, 'a ipsum integer a nibh in quis justo maecenas rhoncus', '2019/09/25', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (131, 11, 5, 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', '2019/07/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (132, 39, 6, 'purus sit amet nulla quisque arcu libero rutrum ac lobortis', '2020/09/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (133, 5, 7, 'primis in faucibus orci luctus et ultrices posuere cubilia curae', '2020/09/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (134, 13, 3, 'varius ut blandit non interdum in ante vestibulum ante ipsum', '2021/05/09', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (135, 42, 5, 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', '2019/08/22', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (136, 39, 7, 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis', '2019/05/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (137, 44, 6, 'nunc donec quis orci eget orci vehicula condimentum curabitur in', '2019/10/31', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (138, 45, 4, 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '2020/11/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (139, 35, 6, 'id mauris vulputate elementum nullam varius nulla facilisi cras non', '2022/04/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (140, 42, 9, 'ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2019/01/26', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (141, 2, 8, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', '2022/03/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (142, 22, 5, 'lectus pellentesque eget nunc donec quis orci eget orci vehicula', '2019/12/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (143, 32, 9, 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus', '2021/04/23', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (144, 34, 9, 'nulla elit ac nulla sed vel enim sit amet nunc', '2020/05/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (145, 7, 7, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', '2021/02/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (146, 38, 6, 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '2021/12/12', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (147, 30, 10, 'est et tempus semper est quam pharetra magna ac consequat', '2021/04/15', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (148, 5, 2, 'aliquam non mauris morbi non lectus aliquam sit amet diam', '2019/09/19', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (149, 15, 8, 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', '2022/09/05', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (150, 47, 3, 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna', '2022/04/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (151, 18, 6, 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', '2020/08/23', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (152, 40, 7, 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', '2022/10/09', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (153, 46, 1, 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', '2021/08/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (154, 5, 8, 'eu sapien cursus vestibulum proin eu mi nulla ac enim', '2020/12/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (155, 49, 8, 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', '2019/10/10', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (156, 9, 10, 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare', '2020/10/23', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (157, 1, 7, 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum', '2021/06/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (158, 44, 5, 'libero rutrum ac lobortis vel dapibus at diam nam tristique', '2021/09/11', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (159, 3, 1, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar', '2019/06/24', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (160, 12, 6, 'est donec odio justo sollicitudin ut suscipit a feugiat et', '2020/05/18', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (161, 25, 2, 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in', '2019/09/13', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (162, 3, 7, 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed', '2021/03/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (163, 15, 4, 'nec molestie sed justo pellentesque viverra pede ac diam cras', '2021/05/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (164, 23, 6, 'nulla ac enim in tempor turpis nec euismod scelerisque quam', '2021/11/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (165, 50, 1, 'est risus auctor sed tristique in tempus sit amet sem', '2021/06/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (166, 15, 3, 'ut erat curabitur gravida nisi at nibh in hac habitasse', '2019/10/13', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (167, 38, 2, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2020/11/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (168, 1, 9, 'nam nulla integer pede justo lacinia eget tincidunt eget tempus', '2021/07/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (169, 43, 7, 'nunc commodo placerat praesent blandit nam nulla integer pede justo', '2020/01/15', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (170, 29, 9, 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', '2019/10/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (171, 23, 6, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien', '2019/09/04', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (172, 12, 4, 'nisl nunc rhoncus dui vel sem sed sagittis nam congue', '2019/11/09', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (173, 47, 2, 'curabitur in libero ut massa volutpat convallis morbi odio odio', '2019/01/03', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (174, 47, 5, 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', '2019/01/06', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (175, 48, 7, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien', '2020/04/08', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (176, 37, 10, 'congue etiam justo etiam pretium iaculis justo in hac habitasse', '2022/08/16', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (177, 36, 3, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id', '2020/09/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (178, 9, 9, 'convallis morbi odio odio elementum eu interdum eu tincidunt in', '2021/02/28', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (179, 24, 2, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', '2022/01/15', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (180, 29, 10, 'justo morbi ut odio cras mi pede malesuada in imperdiet', '2019/07/19', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (181, 8, 6, 'vehicula consequat morbi a ipsum integer a nibh in quis', '2019/08/29', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (182, 38, 9, 'ante ipsum primis in faucibus orci luctus et ultrices posuere', '2021/10/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (183, 23, 7, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl', '2020/09/27', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (184, 32, 10, 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', '2019/06/11', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (185, 45, 1, 'varius nulla facilisi cras non velit nec nisi vulputate nonummy', '2019/01/26', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (186, 13, 4, 'donec posuere metus vitae ipsum aliquam non mauris morbi non', '2022/11/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (187, 23, 6, 'quam nec dui luctus rutrum nulla tellus in sagittis dui', '2022/04/13', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (188, 2, 6, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur', '2019/09/29', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (189, 15, 4, 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', '2020/03/11', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (190, 4, 6, 'consequat ut nulla sed accumsan felis ut at dolor quis', '2022/04/16', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (191, 30, 6, 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '2021/08/11', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (192, 20, 1, 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', '2022/02/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (193, 17, 3, 'lacinia aenean sit amet justo morbi ut odio cras mi', '2020/10/17', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (194, 37, 1, 'odio condimentum id luctus nec molestie sed justo pellentesque viverra', '2019/03/10', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (195, 9, 2, 'libero rutrum ac lobortis vel dapibus at diam nam tristique', '2020/07/12', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (196, 14, 10, 'pellentesque quisque porta volutpat erat quisque erat eros viverra eget', '2020/04/30', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (197, 2, 8, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', '2021/09/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (198, 10, 10, 'dui vel nisl duis ac nibh fusce lacus purus aliquet', '2022/09/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (199, 50, 7, 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus', '2020/11/02', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (200, 34, 7, 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero', '2022/04/15', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (201, 26, 7, 'id pretium iaculis diam erat fermentum justo nec condimentum neque', '2019/03/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (202, 5, 8, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2022/04/09', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (203, 38, 7, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '2022/02/05', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (204, 6, 8, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '2020/12/06', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (205, 26, 9, 'porttitor lorem id ligula suspendisse ornare consequat lectus in est', '2022/05/05', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (206, 46, 8, 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', '2022/07/13', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (207, 45, 1, 'nullam varius nulla facilisi cras non velit nec nisi vulputate', '2019/05/16', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (208, 19, 4, 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2022/03/11', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (209, 7, 8, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2021/12/17', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (210, 14, 7, 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', '2019/06/25', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (211, 33, 5, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem', '2022/01/01', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (212, 7, 4, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', '2020/04/26', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (213, 47, 9, 'orci pede venenatis non sodales sed tincidunt eu felis fusce', '2020/08/21', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (214, 10, 7, 'est quam pharetra magna ac consequat metus sapien ut nunc', '2020/04/13', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (215, 11, 6, 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', '2022/10/12', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (216, 12, 8, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2019/04/08', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (217, 22, 10, 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '2022/06/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (218, 30, 2, 'nec sem duis aliquam convallis nunc proin at turpis a', '2019/01/06', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (219, 23, 10, 'mauris eget massa tempor convallis nulla neque libero convallis eget', '2020/09/20', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (220, 38, 5, 'duis aliquam convallis nunc proin at turpis a pede posuere', '2020/04/03', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (221, 9, 9, 'donec ut dolor morbi vel lectus in quam fringilla rhoncus', '2019/12/20', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (222, 39, 4, 'lectus vestibulum quam sapien varius ut blandit non interdum in', '2019/11/10', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (223, 28, 5, 'mi integer ac neque duis bibendum morbi non quam nec', '2020/05/16', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (224, 15, 5, 'velit eu est congue elementum in hac habitasse platea dictumst', '2022/11/12', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (225, 2, 5, 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', '2019/12/09', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (226, 39, 1, 'nibh ligula nec sem duis aliquam convallis nunc proin at', '2022/06/06', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (227, 40, 6, 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', '2021/03/13', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (228, 20, 5, 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '2021/05/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (229, 27, 2, 'quis orci eget orci vehicula condimentum curabitur in libero ut', '2020/10/29', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (230, 13, 5, 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '2022/04/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (231, 7, 3, 'pede malesuada in imperdiet et commodo vulputate justo in blandit', '2022/06/01', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (232, 2, 10, 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis', '2021/07/28', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (233, 29, 3, 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '2021/10/02', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (234, 44, 7, 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', '2021/02/18', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (235, 37, 10, 'volutpat in congue etiam justo etiam pretium iaculis justo in', '2019/05/02', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (236, 21, 2, 'varius nulla facilisi cras non velit nec nisi vulputate nonummy', '2021/07/03', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (237, 16, 4, 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut', '2020/03/07', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (238, 47, 7, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', '2020/10/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (239, 30, 9, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', '2019/03/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (240, 10, 7, 'in imperdiet et commodo vulputate justo in blandit ultrices enim', '2019/03/29', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (241, 20, 7, 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', '2022/03/18', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (242, 36, 1, 'donec diam neque vestibulum eget vulputate ut ultrices vel augue', '2022/08/19', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (243, 38, 6, 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', '2019/08/26', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (244, 2, 8, 'erat quisque erat eros viverra eget congue eget semper rutrum', '2019/06/30', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (245, 31, 6, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec', '2020/03/14', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (246, 27, 8, 'ultricies eu nibh quisque id justo sit amet sapien dignissim', '2021/08/08', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (247, 12, 9, 'consequat metus sapien ut nunc vestibulum ante ipsum primis in', '2022/06/03', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (248, 39, 10, 'semper porta volutpat quam pede lobortis ligula sit amet eleifend', '2022/03/25', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (249, 25, 10, 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', '2019/07/21', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (250, 45, 2, 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', '2020/11/27', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (251, 6, 1, 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '2021/08/23', true);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (252, 40, 5, 'est risus auctor sed tristique in tempus sit amet sem', '2019/12/17', false);
insert into comments (comment_id, post_id, user_id, comment, creation_date, is_confirmed) values (253, 39, 3, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', '2019/08/03', true);


-- QUERY PART OF QUESTİON

-- 1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.
SELECT posts.title, users.username, categories.name FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
INNER JOIN users ON posts.user_id = users.user_id;

-- 2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte alın.
SELECT posts.title,users.username,posts.creation_date FROM posts
INNER JOIN users ON users.user_id=posts.user_id
ORDER BY posts.creation_date DESC
LIMIT 5;

-- 3. Her blog yazısı için yorum sayısını gösterin
SELECT posts.title, COUNT(comments.comment_id) FROM comments
LEFT JOIN posts on comments.post_id=posts.post_id
GROUP BY title;

-- 4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.
SELECT username,email from users;

-- 5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.
SELECT posts.title,comments.comment FROM comments
INNER JOIN posts ON posts.user_id=comments.user_id
ORDER BY comments.creation_date DESC
LIMIT 10;

-- 6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.
SELECT users.username, posts.content FROM users
INNER JOIN posts ON posts.user_id=users.user_id
WHERE users.user_id=4;


-- 7. Her kullanıcının yazdığı toplam gönderi sayısını alın.
SELECT users.username, COUNT(posts.title) AS post_count FROM posts
INNER JOIN users ON users.user_id=posts.user_id
GROUP BY username;

-- 8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.
SELECT categories.name, COUNT(posts.post_id) AS posts_count FROM categories
INNER JOIN posts ON categories.category_id=posts.category_id
GROUP BY categories.name;

-- 9. Gönderi sayısına göre en popüler kategoriyi bulun.
SELECT categories.name, COUNT(posts.post_id) AS posts_count FROM categories
INNER JOIN posts ON categories.category_id=posts.category_id
GROUP BY categories.name
ORDER BY posts_count DESC
LIMIT 1;

-- 10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.
SELECT categories.name, SUM (posts.view_count) AS view_count FROM posts 
INNER JOIN categories ON posts.category_id=categories.category_id
GROUP BY categories.name
ORDER BY COUNT(posts.view_count) DESC
LIMIT 1;

-- 11. En fazla yoruma sahip gönderiyi alın.
SELECT posts.title, COUNT(comments.comment) FROM posts
INNER JOIN comments ON posts.post_id=comments.post_id
GROUP BY posts.title
ORDER BY COUNT(comments.comment) DESC
LIMIT 1;


--12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin
SELECT users.username, users.email, posts.post_id FROM users
INNER JOIN posts ON users.user_id=posts.user_id
WHERE posts.post_id=3;


--13.Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.
SELECT * FROM posts
WHERE posts.title ILIKE '%lorem%' 
OR posts.content  ILIKE '%lorem%';

-- 14. Belirli bir kullanıcının en son yorumunu gösterin.

SELECT users.username,comments.comment,comments.creation_date FROM users
INNER JOIN comments ON users.user_id=comments.user_id
WHERE users.user_id=4
ORDER BY comments.creation_date DESC
LIMIT 1;

-- 15. Gönderi başına ortalama yorum sayısını bulun.
SELECT ROUND(AVG(comment_count), 3) AS avgcomment_count
FROM
(
	SELECT posts.post_id, COUNT(comments.comment_id) AS comment_count FROM posts
	INNER JOIN comments ON posts.post_id = comments.post_id
	GROUP BY posts.post_id
) AS post_comments;

-- 16. Son 30 günde yayınlanan gönderileri gösterin.

SELECT * FROM posts
WHERE creation_date >= NOW() - INTERVAL '30 day';

-- 17. Belirli bir kullanıcının yaptığı yorumları alın.

SELECT comments.comment, users.username, users.user_id FROM users
INNER JOIN comments ON users.user_id=comments.user_id
where users.user_id=7;

-- 18. Belirli bir kategoriye ait tüm gönderileri bulun.

SELECT posts.title, categories.name FROM posts
INNER JOIN categories ON categories.category_id=posts.category_id
WHERE categories.name='Technology & Precast';

-- 19. 5'ten az yazıya sahip kategorileri bulun.

SELECT categories.name, COUNT(posts.post_id)  AS post_count FROM categories
INNER JOIN posts ON categories.category_id=posts.category_id
GROUP BY categories.name
HAVING COUNT(posts.post_id) <5;

-- 20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.

SELECT users.username, posts.content FROM users
INNER JOIN  posts ON users.user_id=posts.user_id
WHERE
(
	SELECT COUNT(*) FROM posts
	WHERE users.user_id = posts.user_id
) > 0
AND
(
	SELECT COUNT(*) FROM comments
	WHERE users.user_id = comments.user_id
) > 0;

-- 21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.

SELECT users.username FROM users
WHERE 
(
	SELECT DISTINCT COUNT(comments.comment) FROM comments
	WHERE users.user_id=comments.user_id
)>=2;


-- 22. En az 3 yazıya sahip kategorileri görüntüleyin.

SELECT categories.name, COUNT(posts.post_id) AS count_posts FROM categories
INNER JOIN posts ON categories.category_id=posts.category_id
GROUP BY categories.name
HAVING COUNT (posts.post_id)>3

-- 23. 5'ten fazla blog yazısı yazan yazarları bulun.

SELECT users.username, COUNT(posts.post_id) FROM users 
INNER JOIN posts ON users.user_id=posts.user_id
GROUP BY users.username
HAVING COUNT (posts.post_id)>5;

-- 24. Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini
-- görüntüleyin. (UNION kullanarak)

(
	SELECT users.email FROM users WHERE (SELECT COUNT(*) FROM posts WHERE posts.user_id = users.user_id) = 1
)
UNION
(
	SELECT users.email FROM users WHERE (SELECT COUNT(*) FROM comments WHERE comments.user_id = users.user_id) = 1
);
-- 25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun.


SELECT users.username FROM users WHERE 
(SELECT COUNT(*) FROM posts WHERE posts.user_id = users.user_id) > 0
AND
(SELECT COUNT(*) FROM comments WHERE comments.user_id = users.user_id) = 0;