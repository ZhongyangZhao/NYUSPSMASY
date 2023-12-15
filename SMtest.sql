select * from sm_data


INSERT INTO sm_carrier (carrier_id,carrier_name
)
select distinct 
carrier_id,carrier_name
from sm_data;

INSERT INTO sm_company (company_id,company_name
)
select distinct 
company_id,company_name
from sm_data;

INSERT INTO sm_customer (customer_id,customer_name
)
select distinct 
customer_id,customer_name
from sm_data;

INSERT INTO sm_deliver (deliver_id,deliver_address
)
select distinct 
deliver_id,deliver_address
from sm_data;

INSERT INTO sm_pick_up (pick_up_id,pick_up_address
)
select distinct 
pick_up_id,pick_up_address
from sm_data;


INSERT INTO sm_status (status_id,status_name
)
select distinct 
status_id,status_name
from sm_data;


INSERT INTO sm_order 
(order_id, order_eta, order_lfd, order_weight, order_billing_date, sm_company_id,
sm_customer_id, sm_carrier_id, sm_pick_up_id, sm_status_id, sm_deliver_id)
SELECT DISTINCT 
order_id, ETA, LFD, weight, billing_date, company_id, customer_id, 
carrier_id, pick_up_id, status_id, deliver_id 
FROM sm_data;






select 
order_id,sm_company.company_name,order_eta,deliver_address
   
from sm_order
join sm_company
on sm_order.sm_company_id = sm_company.company_id
join sm_deliver
on sm_order.sm_deliver_id = sm_deliver.deliver_id
where company_name = 'WINIT AMERICA INC'


select 
order_id,sm_customer.customer_name,order_lfd,carrier_name
   
from sm_order
join sm_customer
on sm_order.sm_customer_id = sm_customer.customer_id
join sm_carrier
on sm_order.sm_carrier_id = sm_carrier.carrier_id
where carrier_name = 'SEN MART USA'


use Sentrack
select * from sm_data