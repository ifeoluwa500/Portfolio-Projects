--Extracting Hotel Dataset
select * from hotel;





--Showing the total number of Reservation in the DataSet
select distinct room_type_reserved
from hotel;




--Showing the meal plan that is most popular among guests
select type_of_meal_plan, count(*) AS Popular_Meal
FROM hotel
GROUP BY type_of_meal_plan;





--Showing the average price per room for reservations involving children
   select Booking_ID, no_of_children, avg_price_per_room
   from hotel
   where no_of_children > 0;





--How many reservations were made for the year 2018
select count(*) as total_reservations_2018
from hotel
where year(arrival_date) = 2018;





--Showing the most commonly booked room type?
SELECT room_type_reserved, COUNT(*) AS total_bookings
FROM hotel
GROUP BY room_type_reserved
ORDER BY total_bookings DESC;





-- Showing how many reservations fall on a weekend
select count(no_of_weekend_nights) as fall_weekend
from hotel
where no_of_weekend_nights > 0;





--Showing the highest and lowest lead time for reservations
select max(lead_time) as highest_lead_time
from hotel;


select min(lead_time) as lowest_lead_time
from hotel
where lead_time > 0;






--Showing the most common market segment type for reservations
select market_segment_type, count(*) AS common_market_segment
from hotel
group by market_segment_type
order by common_market_segment desc;





--Showing total number of adults and children across all reservations
select 
    sum(no_of_adults) as total_adults,
    sum(no_of_children) as total_children,
    SUM(no_of_adults + no_of_children) as total_guests
from hotel;





--Showing the average number of weekend nights for reservations involving children
select avg(no_of_weekend_nights) as avg_weekend_nights_with_children
from hotel
where no_of_children > 0;





--Showing how many reservations were made in each month of the year
select 
    month(arrival_date) as reservation_month,
    count(*) as total_reservations
from hotel
GROUP BY arrival_date;






--What is the average number of nights (both weekend and weekday) spent by guests for each room type
select 
    room_type_reserved,
    avg(no_of_weekend_nights + no_of_week_nights) as avg_total_nights
from hotel
group by room_type_reserved;







--Showing the reservations involving children, what is the most common room type, and what is the average price for that room type
select
    room_type_reserved,
    count(*) as reservation_count
from hotel
where no_of_children > 0
group by room_type_reserved
order by reservation_count desc;




--Showing the market segment type that generates the highest average price per room.
select 
    market_segment_type,
    avg(avg_price_per_room) as average_price_per_room
from hotel
group by market_segment_type
order by average_price_per_room desc;



