-- query track_id 1
-- get all the info including link urls which returns in json
select a.track_name,
       a.track_name_cn,
       a.release_date,
       a.description,
       a.description_cn,
       c.author_name,
       json_agg(json_build_object('link_name', d.platform_name, 'link_url', b.link_url)) as links
from portfolio.tracks a
         left join portfolio.track_links b on a.track_id = b.track_id
         left join portfolio.authors c on c.author_id = any (a.author_id::int4[])
         left join portfolio.platforms d on b.platform_id = d.platform_id
where a.track_id = 1
group by a.track_name, a.track_name_cn, a.release_date, a.description, a.description_cn, c.author_name;


-- query latest released track
select a.track_name,
       a.track_name_cn,
       a.release_date,
       a.description,
       a.description_cn,
       c.author_name,
       json_agg(json_build_object('link_name', d.platform_name, 'link_url', b.link_url)) as links
from portfolio.tracks a
         left join portfolio.track_links b on a.track_id = b.track_id
         left join portfolio.authors c on c.author_id = any (a.author_id::int4[])
         left join portfolio.platforms d on b.platform_id = d.platform_id
where release_date = (select max(release_date) from portfolio.tracks)
group by a.track_name, a.track_name_cn, a.release_date, a.description, a.description_cn, c.author_name
