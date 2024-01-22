-- query track_id 1
-- get all the info including link urls which returns in json
select a.track_name,
       a.track_name_cn,
       a.release_date,
       a.description,
       a.description_cn,
       a.author_name,
       json_agg(json_build_object('link_name', d.platform_name, 'link_url', b.link_url)) as links
from (SELECT r.*,
             ARRAY(SELECT n.author_name
                   FROM unnest(r.author_id) WITH ORDINALITY AS a(user_id, ord)
                            JOIN web_db.portfolio.authors n ON n.author_id = a.user_id
                   ORDER BY a.ord) AS author_name
      FROM web_db.portfolio.tracks r) as a
         left join portfolio.track_links b on a.track_id = b.track_id
         left join portfolio.platforms d on b.platform_id = d.platform_id
where a.track_id = 2
group by a.track_name, a.track_name_cn, a.release_date, a.description, a.description_cn, a.author_name;


-- query latest released track
select a.track_name,
       a.track_name_cn,
       a.release_date,
       a.description,
       a.description_cn,
       a.author_name,
       json_agg(json_build_object('link_name', d.platform_name, 'link_url', b.link_url)) as links
from (SELECT r.*,
             ARRAY(SELECT n.author_name
                   FROM unnest(r.author_id) WITH ORDINALITY AS a(user_id, ord)
                            JOIN web_db.portfolio.authors n ON n.author_id = a.user_id
                   ORDER BY a.ord) AS author_name
      FROM web_db.portfolio.tracks r) as a
         left join portfolio.track_links b on a.track_id = b.track_id
         left join portfolio.platforms d on b.platform_id = d.platform_id
where release_date = (select max(release_date) from portfolio.tracks)
group by a.track_name, a.track_name_cn, a.release_date, a.description, a.description_cn, a.author_name;
