
CREATE TABLE "single_date_tweet_info" (
    "tweet_date" date   NOT NULL,
    "tesla_mention" bool   NOT NULL,
    "twitter_mention" bool   NOT NULL,
    CONSTRAINT "pk_single_date_tweet_info" PRIMARY KEY (
        "tweet_date"
     )
);

CREATE TABLE "ticker_data" (
    "id" serial   NOT NULL,
    "ticker_id" int   NOT NULL,
    "date" date   NOT NULL,
    "open" float   NOT NULL,
    "high" float   NOT NULL,
    "low" float   NOT NULL,
    "close" float   NOT NULL,
    "volume" int   NOT NULL,
    "closeadj" float   NOT NULL,
    "closeunadj" float   NOT NULL,
    CONSTRAINT "pk_ticker_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "ticker_lk" (
    "id" int   NOT NULL,
    "ticker" VARCHAR(10)   NOT NULL,
    "company" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_ticker_lk" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "ticker_data" ADD CONSTRAINT "fk_ticker_data_ticker_id" FOREIGN KEY("ticker_id")
REFERENCES "ticker_lk" ("id");

ALTER TABLE "ticker_data" ADD CONSTRAINT "fk_ticker_data_date" FOREIGN KEY("date")
REFERENCES "single_date_tweet_info" ("tweet_date");

