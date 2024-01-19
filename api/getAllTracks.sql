-- query all tracks
select a.track_name,
       a.track_name_cn,
       a.release_date,
       a.description,
       a.description_cn,
       c.author_name,
       json_agg(json_build_object('link_name', d.platform_name, 'link_url', b.link_url)) as links
from web_db.portfolio.tracks a
         left join web_db.portfolio.track_links b on a.track_id = b.track_id
         left join web_db.portfolio.authors c on c.author_id = any (a.author_id::int4[])
         left join web_db.portfolio.platforms d on b.platform_id = d.platform_id
group by a.track_name, a.track_name_cn, a.release_date, a.description, a.description_cn, c.author_name
order by release_date desc

