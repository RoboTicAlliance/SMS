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
	Student_BForm varchar(60),
	Father_Name varchar(60),
	Father_CNIC varchar(60),
	Contact_1 varchar(60),
	Contact_2 varchar(60),
	Current_Address varchar(60),
	permanent_Address varchar(60),
	ProfileImage image
);
create table Teacher(
	Teacher_Id varchar(60) primary key,
	Teacher_CNIC varchar(60) unique,
	Teacher_Name varchar(60),
	Gender varchar(60),
	Contact_1 varchar(60),
	Contact_2 varchar(60),
	Current_Address varchar(60),
	permanent_Address varchar(60),
	ProfileImage image
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
	ProfileImage image

);
create table 
