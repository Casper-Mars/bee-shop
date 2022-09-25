use test;
create table item
(
  id int(10) unsigned not null auto_increment,
  name varchar(256) not null default '',
  icon_url varchar(256) not null default '',
  price decimal(10, 2) not null default 0.0,
  seller_id int(10) not null,
  id_del tinyint(1) not null default 0 comment '0.未删除 1.已删除',
  effect_begin timestamp not null default 0 comment '上架时间',
  effect_end timestamp not null default 0 comment '下架时间',
  update_time timestamp not null default current_timestamp on update current_timestamp,
  create_time timestamp not null default current_timestamp,
  PRIMARY KEY (id)
) engine = innodb default charset = utf8mb4;

insert into item(name, icon_url, price, effect_begin, effect_end) values ("手机", "www.fwe.jpg", 1999.00, "2022-09-25 21:17:45", "2022-09-25 21:17:45");