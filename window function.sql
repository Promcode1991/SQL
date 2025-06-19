select * 
from event_in as ev
join gym_member as gym
on ev.person_id = gym.person_id

select gym.name,  gym.membership_status,
	row_number() OVER(partition by membership_status) as row_logo,
	rank() OVER(partition by membership_status) as rank_logo,
	dense_rank() OVER(partition by membership_status) as dense_rank_logo
from event_in as ev
join gym_member as gym
	on ev.person_id = gym.person_id
where membership_status = 'gold';

SELECT name,  COUNT(membership_status) OVER(PARTITION BY membership_status) AS logo
FROM gym_member AS gym
JOIN event_in AS ev
	ON gym.person_id = ev.person_id;

select event_id, event_name, name,
row_number() over(partition by event_id order by name) as guest,
rank() over(partition by event_id order by name) as guest_r,
dense_rank() over(partition by event_id order by name) as guest_dr
from event_in as ev
join gym_member as gym
on ev.person_id = gym.person_id
where event_id < '1500';	