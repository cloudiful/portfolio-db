create table web_db.portfolio.authors
(
    author_id      serial primary key,
    author_name    text,
    author_name_cn text
);

-- add Cloudiful
INSERT INTO web_db.portfolio.authors (author_id, author_name, author_name_cn) VALUES (1, 'Cloudiful', '云漫');
