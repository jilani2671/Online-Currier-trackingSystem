create database onlinecouriertrackingadmin_signup;

use onlinecouriertracking;

create table user_signup
(
 user_id int auto_increment primary key,
 First_name nvarchar(200),
 Last_name nvarchar(200),
 Email_Id nvarchar(200),
 Password nvarchar(200),
 Confirm_password nvarchar(200)
);

 create table admin_signup(
 as_id int auto_increment primary key,
 First_name varchar(200),
 Last_name nvarchar(200),
 Email_ID nvarchar(200),
 Password nvarchar(200),
 Confirm_password nvarchar(200)
);
 

create table branch_signup(
bs_id int auto_increment primary key,
 First_name varchar(200),
 Last_name nvarchar(200),
 Email_ID nvarchar(200),
 Password nvarchar(200),
 city nvarchar(45),
 pincode nvarchar(45),
 Confirm_password nvarchar(200)
);



create table user_courierinformation(
ci_id int auto_increment primary key,
user_id int,
Email_ID nvarchar(50),
Consignment_No nvarchar(50),
Booking_Date nvarchar(50),
Booking_Mode nvarchar(50),
Weight nvarchar(50),
Quantity bigint(50),
Parcel_Type nvarchar(50),
Price nvarchar(50),
city nvarchar(45),
pincode nvarchar(45),
rcity nvarchar(45),
rpincode nvarchar(45),
status nvarchar(50)
);



create table user_receiverdetails
(
 r_id int auto_increment primary key,
 user_id int,
 Email_Id nvarchar(50),
 Receiver_Name nvarchar(50),
 Receiver_Email nvarchar(50), 
 phone_No bigint(50),
 Address nvarchar(50),
 City nvarchar(50),
 Pin_code bigint(50),
 state nvarchar(50),
 Country nvarchar(50)
);

  create table Pickup_Address_Page(
 a_id int auto_increment primary key,
 user_id int,
 Email_ID nvarchar(50), 
 reciever_name nvarchar(50),
 Receiver_Email nvarchar(50),
 Consignment_No nvarchar(50),
 Name_person nvarchar(50),
 Address_Line1 nvarchar(200),
 Address_Line2 nvarchar(200),
 Pin_Code nvarchar(200),
 City nvarchar(50),
 state nvarchar(200),
 Country nvarchar(200)
 );
 
 
 
create table user_payment
(

 p_id int auto_increment primary key,
 user_id int,
 Email_ID nvarchar(50),
 Consignment_No nvarchar(50),
 Payment_Mode nvarchar(50),
 Price nvarchar(50),
 Quantity nvarchar(50),
 Tax bigint(50),
 Amount nvarchar(50)
  
);
 
 
create table tracking
(
	tracking_id int auto_increment primary key,
    user_id int, 
	Consignment_No nvarchar(50),
    Booking_Mode nvarchar(45),
	Booking_Date nvarchar(50), 
	Parcel_Type nvarchar(50),
	Price nvarchar(50),
    branch_name nvarchar(45),
    city nvarchar(45), 
	status nvarchar(50),
    date nvarchar(45)
    
);


create table feedback(
 f_id int auto_increment primary key,
 Coustomer_Name nvarchar(200),
 Email_ID nvarchar(200),
 Feedback nvarchar(200)
  
 ); 
 
 


  

