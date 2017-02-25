DROP TABLE sequences;
DROP TABLE poses;

CREATE TABLE poses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  hold_time INT4, -- CHANGE THIS FOR minutes and seconds -- 
  effort_level INT2
);

CREATE TABLE sequences (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  total_time INT4,
  average_effort_level INT4,
  pose_id INT4 REFERENCES poses(id) ON DELETE CASCADE
);