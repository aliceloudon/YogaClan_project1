DROP TABLE poses_sequences;
DROP TABLE sequences;
DROP TABLE poses;

CREATE TABLE poses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  time INT4,
  effort_level INT4
);

CREATE TABLE sequences (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE poses_sequences (
  id SERIAL4 PRIMARY KEY,
  pose_id INT4 REFERENCES poses(id) ON DELETE CASCADE,
  sequence_id INT4 REFERENCES sequences(id) ON DELETE CASCADE
);