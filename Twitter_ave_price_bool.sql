select 
sd.twitter_mention,
count(td.id),
avg(td.close-td.open)
from
ticker_data td
join single_date_tweet_info sd on td.date = sd.tweet_date
join ticker_lk t on t.id = td.ticker_id
where 
t.ticker='twtr'
group by 
sd.twitter_mention
