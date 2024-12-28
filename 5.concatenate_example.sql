select 

last_name ||', '||left(email ,position('.' in email)-1)
from customer

