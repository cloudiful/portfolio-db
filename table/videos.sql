create table web.portfolio.videos
(
    video_id        serial primary key,
    video_name      text,
    video_name_cn   text,
    author_id      int4[],
    release_date   date,
    description    text,
    description_cn text
);

create table web.portfolio.video_links
(
    link_id     serial primary key,
    video_id     int4,
    platform_id int4,
    link_url    text
);

