drop database Online_Recruitment_System
create database Online_Recruitment_System;
use Online_Recruitment_System;

drop table JobSeeker
create table JobSeeker
(
sId int primary key identity(1,1),
sName varchar(50),
sAddress varchar(100),
sEmail varchar(30),
sPhoneNo varchar(10),
sPhoto image,
sResumeId int foreign key references ResumeDetails(sResumeID)
);

drop table ResumeDetails
create table ResumeDetails
(
sResumeId int primary key identity(101,1),
sXQualification varchar(10),
sXIIQualification varchar(10),
sHighestDegree varchar(20),
s_Skills varchar(100),
sExperience int,
sProjects varchar(1000),
);
drop table JobOpenings
create table JobOpenings
(
jId int primary key identity(101,1),
jDesignation varchar(20),
jExperience int,
jLocation varchar(50),
jOrganization varchar(30),
jPackage varchar(20),
jAreaOfInterest varchar(200) 
)


drop table Login
create table Login
(
userName varchar(30),
password varchar(50),
userType varchar(2) check(userType in('E','J'))
);

drop table AppliedJobs
create table AppliedJobs
(
sId int primary key foreign key references JobSeeker(sId),
jId int foreign key references JobOpenings(jId)
);






