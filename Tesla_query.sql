select 
sd.tweet_date,
sd.tesla_mention,
td.open,
td.close,
td.volume,
t.ticker,
t.company
from
ticker_data td
join single_date_tweet_info sd on td.date = sd.tweet_date
join ticker_lk t on t.id = td.ticker_id
where 
sd.tesla_mention
and 
t.ticker='tsla'
order by sd.tweet_date