CREATE TABLE Parents (
parent_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE Children (
child_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE
);

CREATE TABLE Teachers (
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE Classes (
class_id INT PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(100),
teacher_id INT,
FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Child_Parent (
child_id INT,
parent_id INT,
PRIMARY KEY (child_id, parent_id),
FOREIGN KEY (child_id) REFERENCES Children(child_id),
FOREIGN KEY (parent_id) REFERENCES Parents(parent_id)
);

CREATE TABLE Child_Class (
child_id INT,
class_id INT,
PRIMARY KEY (child_id, class_id),
FOREIGN KEY (child_id) REFERENCES Children(child_id),
FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

CREATE TABLE Attendance (
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
child_id INT,
attendance_date DATE,
status VARCHAR(20),
FOREIGN KEY (child_id) REFERENCES Children(child_id)
);
