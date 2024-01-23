select a.video_name,
       a.video_name_cn,
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
      FROM web_db.portfolio.videos r) as a
         left join web_db.portfolio.video_links b on a.video_id = b.video_id
         left join web_db.portfolio.platforms d on b.platform_id = d.platform_id
group by a.video_name, a.video_name_cn, a.release_date, a.description, a.description_cn, a.author_name
order by release_date desc