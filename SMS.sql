create database SMS
use SMS

create table Admin(
	Admin_Name varchar(60),
	Admin_Password varchar(60)
);
create table Student(
	Student_Id varchar(60) primary key,
	Student_RollNo int unique,
	Student_Name varchar(60),
	Gender varchar(60),
	DOB date,
	Student_BForm varchar(60),
	Father_Name varchar(60),
	Father_CNIC varchar(60),
	Contact_1 varchar(60),
	Contact_2 varchar(60),
	Current_Address varchar(60),
	permanent_Address varchar(60),
	Profile_Image image
);
create table Teacher(
	Teacher_Id varchar(60) primary key,
	Teacher_CNIC varchar(60) unique,
	Teacher_Name varchar(60),
	Age int,
	Gender varchar(60),
	Contact_1 varchar(60),
	Contact_2 varchar(60),
	Current_Address varchar(60),
	permanent_Address varchar(60),
	Profile_Image image
);
create table Staff(
	Staff_Id varchar(60) primary key,
	Staff_CNIC varchar(60) unique,
	Staff_Name varchar(60),
	Gender varchar(60),
	Contact_1 varchar(60),
	Contact_2 varchar(60),
	Current_Address varchar(60),
	permanent_Address varchar(60),
	Profile_Image image

);
create table ClassesList(
	Class_Id varchar(60) primary key,
	Class_Name varchar(60),
	Class_Fee int

)
create table SubjectList(
	Subject_Id varchar(60),
	Subject_Name varchar(60),
)
create table Fee(
	Fee_Id varchar(60) primary key,
	Student_Id varchar(60) foreign key references Student(Student_Id),
	Class_Fee int foreign key references ClassesList(Class_Fee)
	Discount int
)
create table GenerateStudentFeeChallan(
	Challan_Id varchar(60) primary key,
	Student_Id varchar(60) foreign key references Student(Student_Id),
	Fee_Id varchar(60) foreign key references Fee(Fee_Id),

)
