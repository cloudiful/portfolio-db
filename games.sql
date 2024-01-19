create table web_db.portfolio.games(
    game_id serial,
    game_name text,
    game_name_cn text,
    author_id int4,
    release_date date,
    description text,
    description_cn text
);

create table web_db.portfolio.game_links(
    link_id serial,
    game_id int4,
    platform_id int4,
    link_url text
);