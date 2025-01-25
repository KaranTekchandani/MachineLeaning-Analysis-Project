create table Cargo(
Shipment_ID serial primary key ,
Mode varchar(20),
Origin	varchar(20),
Destination	varchar(20),
Distance int,
Delay_Status int,
Delay_Hours	int,
Weather_Conditions	varchar(20),
Traffic_Condition	varchar(20),
Past_Performance varchar(20)
);

select * from Cargo;
