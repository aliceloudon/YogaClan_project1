DROP TABLE poses;

CREATE TABLE poses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  hold_time INT2, -- CHANGE THIS FOR TIME -- 
  effort_level INT2
);
