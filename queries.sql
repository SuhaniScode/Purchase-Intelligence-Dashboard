-- Preview data
SELECT * 
FROM Ecommerce_Consumer_Behavior 
LIMIT 5;



-- Total records
SELECT COUNT(*) 
FROM Ecommerce_Consumer_Behavior;
-- Average purchase amount
SELECT AVG("Purchase_Amount") 
FROM Ecommerce_Consumer_Behavior;



-- Purchase category count
SELECT Purchase_Category, COUNT(*) 
FROM Ecommerce_Consumer_Behavior
GROUP BY Purchase_Category
ORDER BY COUNT(*) DESC;



-- Avg purchase by category
SELECT Purchase_Category, AVG("Purchase_Amount") 
FROM Ecommerce_Consumer_Behavior
GROUP BY Purchase_Category
ORDER BY AVG("Purchase_Amount") DESC;



-- Avg purchase by gender
SELECT Gender, AVG("Purchase_Amount") 
FROM Ecommerce_Consumer_Behavior
GROUP BY Gender;



-- Avg purchase by age (top 10)
SELECT Age, AVG("Purchase_Amount") 
FROM Ecommerce_Consumer_Behavior
GROUP BY Age
ORDER BY AVG("Purchase_Amount") DESC
LIMIT 10;



-- Avg purchase by income
SELECT Income_Level, AVG("Purchase_Amount") 
FROM Ecommerce_Consumer_Behavior
GROUP BY Income_Level;

--------------------------------------------------

-- Purchase channel distribution
SELECT Purchase_Channel, COUNT(*) 
FROM Ecommerce_Consumer_Behavior
GROUP BY Purchase_Channel;
