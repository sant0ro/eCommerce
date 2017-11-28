create table if not exists LOG (id bigint, version bigint not null, added_at timestamp, related_element varchar(255) not null, related_table varchar(255) not null, details varchar(255) not null, primary key (id));
create table if not exists PRODUCT (id varchar(255) not null, version bigint not null, added_at timestamp not null, price float not null, name varchar(255) not null, stock integer, edited_at timestamp not null, description varchar(255) not null, primary key (id));
create table if not exists STOCK (id varchar(255) not null, version bigint not null, added_at timestamp, product_id varchar(32) not null, details varchar(255) not null, edited_at timestamp, amount integer default 1 not null, primary key (id));