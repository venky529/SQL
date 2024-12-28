create or replace procedure sp_transfer
(tr_amount int, sender int , recipient int)
language plpgsql

as
$$

begin

-- add balance

update acc_balance
set amount = amount + tr_amount
where id = recipient;

-- substract balance

update acc_balance
set amount = amount - tr_amount
where id = sender;
commit;
end;
$$

select * from acc_balance

call sp_transfer (500,1,2) 