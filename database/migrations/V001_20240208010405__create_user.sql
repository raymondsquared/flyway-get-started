CREATE TABLE IF NOT EXISTS tutorial.user (
	user_id BIGSERIAL,
	postcode VARCHAR NOT NULL,
  created_at_utc_timestamp TIMESTAMP DEFAULT NOW(),
	PRIMARY KEY (user_id)
);
