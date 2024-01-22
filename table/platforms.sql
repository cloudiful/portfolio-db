create table web_db.portfolio.platforms
(
    platform_id   serial primary key,
    platform_name text,
    platform_icon text
);

create table web_db.portfolio.platform_links
(
    link_id     serial primary key,
    platform_id integer,
    author_id   integer,
    link_url    text
);

INSERT INTO portfolio.platforms (platform_id, platform_name, platform_icon) VALUES (3, 'Apple Music', 'mdi-apple');
INSERT INTO portfolio.platforms (platform_id, platform_name, platform_icon) VALUES (2, 'QQ音乐', 'mdi-qqchat');
INSERT INTO portfolio.platforms (platform_id, platform_name, platform_icon) VALUES (1, '网易云音乐', 'mdi-music');
INSERT INTO portfolio.platforms (platform_id, platform_name, platform_icon) VALUES (4, 'Spotify', 'mdi-spotify');
INSERT INTO portfolio.platforms (platform_id, platform_name, platform_icon) VALUES (5, 'GitHub', 'mdi-github');

INSERT INTO portfolio.platform_links (link_id, platform_id, author_id, link_url) VALUES (1, 1, 1, 'https://music.163.com/#/artist?id=1081291');
INSERT INTO portfolio.platform_links (link_id, platform_id, author_id, link_url) VALUES (2, 2, 1, 'https://y.qq.com/n/ryqq/singer/002IvFzw16oHLv');
INSERT INTO portfolio.platform_links (link_id, platform_id, author_id, link_url) VALUES (3, 3, 1, 'https://music.apple.com/artist/cloudiful/1627252333');
INSERT INTO portfolio.platform_links (link_id, platform_id, author_id, link_url) VALUES (4, 4, 1, 'https://open.spotify.com/artist/0XswBUDNMCk2JQNR9WgrFQ?si=vc9ACORkTV-CuI4dDn5U5A');
INSERT INTO portfolio.platform_links (link_id, platform_id, author_id, link_url) VALUES (5, 5, 1, 'https://github.com/cloudiful');
