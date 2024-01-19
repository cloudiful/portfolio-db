create table tracks
(
    track_id       serial primary key,
    track_name     text,
    track_name_cn  text,
    author_id      int4,
    release_date   date,
    description    text,
    description_cn text
);

create table track_links
(
    link_id     serial primary key,
    track_id    int4,
    platform_id int4,
    link_url    text
);