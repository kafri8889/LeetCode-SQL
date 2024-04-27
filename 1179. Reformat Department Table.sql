Create table If Not Exists Department (id int, revenue int, month varchar(5));

insert into Department (id, revenue, month) values ('1', '8000', 'Jan');
insert into Department (id, revenue, month) values ('2', '9000', 'Jan');
insert into Department (id, revenue, month) values ('3', '10000', 'Feb');
insert into Department (id, revenue, month) values ('1', '7000', 'Feb');
insert into Department (id, revenue, month) values ('1', '6000', 'Mar');

-- Reformat the table such that there is a department id column and a revenue column for each month.
--
-- Return the result table in any order.
--
-- The result format is in the following example.
--
--
-- Example 1:
--
-- Input:
-- Department table:
-- +------+---------+-------+
-- | id   | revenue | month |
-- +------+---------+-------+
-- | 1    | 8000    | Jan   |
-- | 2    | 9000    | Jan   |
-- | 3    | 10000   | Feb   |
-- | 1    | 7000    | Feb   |
-- | 1    | 6000    | Mar   |
-- +------+---------+-------+
-- Output:
-- +------+-------------+-------------+-------------+-----+-------------+
-- | id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
-- +------+-------------+-------------+-------------+-----+-------------+
-- | 1    | 8000        | 7000        | 6000        | ... | null        |
-- | 2    | 9000        | null        | null        | ... | null        |
-- | 3    | null        | 10000       | null        | ... | null        |
-- +------+-------------+-------------+-------------+-----+-------------+
-- Explanation: The revenue from Apr to Dec is null.
-- Note that the result table has 13 columns (1 for the department id + 12 for the months).

select
    id,
    (case when Department.month = 'Jan' then Department.revenue end) as Jan_Revenue,
    (case when Department.month = 'Feb' then Department.revenue end) as Feb_Revenue,
    (case when Department.month = 'Mar' then Department.revenue end) as Mar_Revenue,
    (case when Department.month = 'Apr' then Department.revenue end) as Apr_Revenue,
    (case when Department.month = 'May' then Department.revenue end) as May_Revenue,
    (case when Department.month = 'Jun' then Department.revenue end) as Jun_Revenue,
    (case when Department.month = 'Jul' then Department.revenue end) as Jul_Revenue,
    (case when Department.month = 'Aug' then Department.revenue end) as Aug_Revenue,
    (case when Department.month = 'Sep' then Department.revenue end) as Sep_Revenue,
    (case when Department.month = 'Okt' then Department.revenue end) as Okt_Revenue,
    (case when Department.month = 'Nov' then Department.revenue end) as Nov_Revenue,
    (case when Department.month = 'Dec' then Department.revenue end) as Dec_Revenue
from Department group by id;
