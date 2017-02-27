DROP TABLE joins;
DROP TABLE sequences;
DROP TABLE poses;

CREATE TABLE poses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  hold_time INT4, -- CHANGE THIS FOR minutes and seconds -- 
  effort_level INT4
);

CREATE TABLE sequences (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE joins (
  id SERIAL4 PRIMARY KEY,
  pose_id INT4 references poses(id),
  sequence_id INT4 references sequences(id)
);