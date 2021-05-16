select title, score from hacker_news order by score desc limit 5;
select sum(score) from hacker_news;
select user, sum(score) from hacker_news group by 1 having sum(score)>200 order by 2 desc;
select (517+309+304+282)/6366.0;
select user, count(url) from hacker_news group by user having url like '%https://www.youtube.com/watch?v=dQw4w9WgXcQ%' order by count(*) desc;
select case 
when url like '%github.com%' then 'GitHub'
when url like '%medium.com%' then 'Medium'
when url like 'nytimes.com' then 'New York Times'
else 'Other'
end as 'Source', count(*) 
from hacker_news group by 1;
select timestamp from hacker_news limit 10;
select timestamp, strftime("%H",timestamp) from hacker_news group by 1 limit 20;
select strftime("%H",timestamp) as 'Hour',round(avg(score)) as 'avg score',count(*) as 'count' from hacker_news where timestamp is not null group by 1 order by 1;