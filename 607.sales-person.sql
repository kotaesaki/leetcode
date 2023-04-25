--
-- @lc app=leetcode id=607 lang=mysql
--
-- [607] Sales Person
--

-- @lc code=start
# Write your MySQL query statement below

select SalesPerson.name from SalesPerson 
left join 
(
  select Orders.sales_id from Orders join Company on Company.com_id = Orders.com_id 
  where Company.name = "RED" group by Orders.sales_id
) as Orders on SalesPerson.sales_id = Orders.sales_id
where Orders.sales_id IS NULL;

-- @lc code=end

