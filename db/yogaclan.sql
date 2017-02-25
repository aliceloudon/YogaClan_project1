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
  pose_id_1 INT4 REFERENCES poses(id),
  pose_id_2 INT4 REFERENCES poses(id)
);