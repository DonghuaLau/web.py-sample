CREATE TABLE items (
    id serial primary key,
    author_id int references users,
    body text,
    created timestamp default 0
);

insert into items (author_id, body, created) values (100, "Hello world", "2017-07-29");
insert into items (author_id, body, created) values (102, "Web.py", "2017-07-28");
