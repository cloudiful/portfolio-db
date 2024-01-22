create table web_db.portfolio.games
(
    game_id        serial primary key,
    game_name      text,
    game_name_cn   text,
    author_id      int4[],
    release_date   date,
    description    text,
    description_cn text
);

create table web_db.portfolio.game_links
(
    link_id     serial primary key,
    game_id     int4,
    platform_id int4,
    link_url    text
);

INSERT INTO web_db.portfolio.games (game_id, game_name, game_name_cn, author_id, release_date, description, description_cn)
VALUES (1, 'Resee', '重见天日', '{1,2,3}', '2023-12-14', null, null);

INSERT INTO web_db.portfolio.game_links (link_id, game_id, platform_id, link_url)
VALUES (1, 1, 5, 'https://github.com/cloudiful/ludum-dare-54-game');
