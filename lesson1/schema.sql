-- GamesShop
/*
	Данный проек представляет собой реализацию интернет магазина компьютерных игр (аналог steam, playstaion store, microsoft store). 
	В проекте можно будет получить список игр по жанрам/категориям. Также просмотреть заказы, статус заказов: был ли он доставлен, оплачен или отменен. 
	Основной use-case это покупка и просмотр игр пользователями.
*/

/*
  CREATE DATABASE games_shop
	TEMPLATE = 'template0'
	ENCODING = 'utf-8'
	LC_COLLATE = 'C.UTF-8'
	LC_CTYPE = 'C.UTF-8';
	
  CREATE TABLE game_category (
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	PRIMARY KEY(id)
	);
	
  CREATE TABLE game (
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	count INT,
	price INT CHECK (price >= 0),
	category_id INT,
	PRIMARY KEY(id),
	FOREIGN KEY(category_id) REFERENCES game_category (id)
	);
	
  CREATE TABLE usr (
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	email VARCHAR(255),
	password VARCHAR(255),
	reg_date TIMESTAMP,
	PRIMARY KEY(id)
	);
	
  CREATE TABLE order_status (
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	code VARCHAR(100),
	PRIMARY KEY(id)
	);
	
  CREATE TABLE order_status_change (
  	id INT GENERATED ALWAYS AS IDENTITY,
  	order_id INT,
  	src_status_id INT,
  	dst_status_id INT,
  	time TIMESTAMP,
  	PRIMARY KEY(id),
  	FOREIGN KEY(src_status_id) REFERENCES order_status (id),
  	FOREIGN KEY(dst_status_id) REFERENCES order_status (id)
  	);
	
  CREATE TABLE ordr (
	id INT GENERATED ALWAYS AS IDENTITY,
	usr_id INT,
	status_id INT,
	creation_date TIMESTAMP,
	PRIMARY KEY(id),
	FOREIGN KEY(usr_id) REFERENCES usr (id),
  	FOREIGN KEY(status_id) REFERENCES order_status_change (id)
  	);
	
  CREATE TABLE order_to_game (
	order_id INT,
	game_id INT,
	count INT,
	FOREIGN KEY(order_id) REFERENCES ordr (id),
  	FOREIGN KEY(game_id) REFERENCES game (id)
	);
*/
