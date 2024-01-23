create table web_db.portfolio.tracks
(
    track_id       serial primary key,
    track_name     text,
    track_name_cn  text,
    author_id      int4[],
    release_date   date,
    description    text,
    description_cn text
);

create table web_db.portfolio.track_links
(
    link_id     serial primary key,
    track_id    int4,
    platform_id int4,
    link_url    text
);

INSERT INTO web_db.portfolio.tracks (track_id, track_name, track_name_cn, author_id, release_date, description, description_cn)
VALUES (1, 'Spy 94', '内鬼94', '{1}', '2023-07-19', 'You are kinda sus.', '你很可疑。');
INSERT INTO web_db.portfolio.tracks (track_id, track_name, track_name_cn, author_id, release_date, description, description_cn)
VALUES (2, 'Resee', '重见天日', '{1}', '2023-11-10', 'Re see the light.', '重新看见光亮。');

INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (2, 1, 2, 'wdsd');
INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (1, 1, 1, 'https://music.163.com/#/song?id=2039619341');
INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (3, 2, 1, 'https://music.163.com/#/album?id=176867418');
INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (5, 2, 2, 'https://i.y.qq.com/n2/m/share/details/album.html?albummid=000yp7NG24f7Ly');
INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (6, 2, 3, 'https://music.apple.com/hk/album/resee-single/1713803380');
INSERT INTO web_db.portfolio.track_links (link_id, track_id, platform_id, link_url)
VALUES (7, 2, 4, 'https://open.spotify.com/album/2O9HJE1Uh6IXywCbIgG88N?si=A72_CBMIQ4iZkiUtpU86Jw');

