DROP TABLE poses;

CREATE TABLE poses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  hold_time INT2, -- CHANGE THIS FOR minutes and seconds -- 
  effort_level INT2
);

CREATE TABLE sequences (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  total_time INT2,
  average_effort_level INT2
);

CREATE TABLE poses_sequences (
  id SERIAL4 PRIMARY KEY,
  pose_id INT4 REFERENCES poses(id) ON DELETE CASCADE,
  sequence_id INT4 REFERENCES sequences(id) ON DELETE CASCADE
);