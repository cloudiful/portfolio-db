create table platforms
(
    platform_id   serial primary key,
    platform_name text,
    platform_icon text
);

create table platform_links
(
    link_id     serial primary key,
    platform_id integer,
    author_id   integer,
    link_url    text
);