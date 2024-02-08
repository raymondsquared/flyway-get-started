CREATE TABLE IF NOT EXISTS tutorial.state (
	state_id VARCHAR,
	state VARCHAR NOT NULL,
	created_at_utc_timestamp TIMESTAMP DEFAULT NOW(),
	PRIMARY KEY (state_id)
);
