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
  name VARCHAR(255),
  total_time INT4,
  average_effort_level INT4,
  number_of_poses INT4
);

CREATE TABLE joins (
  id SERIAL4 PRIMARY KEY,
  pose_id INT4,
  sequence_id INT4
);