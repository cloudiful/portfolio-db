create table web.portfolio.games
(
    game_id        serial primary key,
    game_name      text,
    game_name_cn   text,
    author_id      int4[],
    release_date   date,
    description    text,
    description_cn text
);

create table web.portfolio.game_links
(
    link_id     serial primary key,
    game_id     int4,
    platform_id int4,
    link_url    text
);

INSERT INTO web.portfolio.games (game_id, game_name, game_name_cn, author_id, release_date, description, description_cn) VALUES (1, '3 Minutes Soundtrack 1 Minute Gameplay', '重见天日', '{1,2,3}', '2023-12-14', null, null);

INSERT INTO web.portfolio.game_links (link_id, game_id, platform_id, link_url) VALUES (1, 1, 5, 'https://github.com/cloudiful/ludum-dare-54-game');
INSERT INTO web.portfolio.game_links (link_id, game_id, platform_id, link_url) VALUES (2, 1, 6, 'https://ldjam.com/events/ludum-dare/54/3-minutes-soundtrack-1-minute-gameplay');
