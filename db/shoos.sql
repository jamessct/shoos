DROP TABLE shoos;
CREATE TABLE shoos (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  size INT2,
  quantity INT2
);