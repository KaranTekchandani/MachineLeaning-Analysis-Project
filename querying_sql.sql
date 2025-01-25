/*
Which weather condition leads to the highest delays?
What is the delay trend over time (e.g., daily or monthly)?
Which origin-destination pairs experience the most delays?
How does distance affect the average delay?
How does past performance correlate with delays?
What is the overall delay percentage?
What is the combined impact of traffic and weather conditions on delays?
*/
/*
--1.What is the average delay for each mode of transport?
select mode,avg(delay_hours) from cargo
group by mode;


--2. Top 3 Most Frequently Used Modes of Transport
select mode,count(mode)
from cargo
group by mode
order by 2 desc
limit 3
 
--3. percentage delay vs not delayed for each mode

select mode,count(case when delay_status=1 then 1 end)*100.0/count(*) as perc_delayed
from cargo
group by 1

--4.Analyze Impact of Traffic on Delays

	select traffic_condition,count(*) as total_orders,count(case when delay_status=1 then 1 end) as delayed_orders,count(case when delay_status=1 then 1 end)*100.0/count(delay_status) from cargo
	group by 1 
	order by 2

--5. Find the second Longest Distance for Each Mode 

select mode, distance
from 
(select mode,distance,row_number() over( partition by mode order by distance desc) as ranks
from cargo)
where ranks=2

--6.Count of Delayed Orders by Origin and Destination Pair


select origin,destination,count(case when delay_status=1 then 1 end) from cargo
group by origin,destination
order by 3 desc

--7. Effect of past performance
select past_performance,count(case when delay_status=1 then 1 end) as delayed,count(*) as totals,count(case when delay_status=1 then 1 end)*100.0/count(*)  from cargo
group by 1
*/