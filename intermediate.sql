/* Write a query to count the number of non-null rows in the low column */
SELECT COUNT(low) AS low
  FROM tutorial.aapl_historical_stock_price

/* Write a query that determines counts of every single column. Which column has the most null values? */
SELECT COUNT(year) AS year,
       COUNT(month) AS month,
       COUNT(open) AS open,
       COUNT(high) AS high,
       COUNT(low) AS low,
       COUNT(close) AS close,
       COUNT(volume) AS volume
  FROM tutorial.aapl_historical_stock_price
  
  /* Write a query to calculate the average opening price */
  SELECT SUM(open)/COUNT(open) AS avg_open_price
  FROM tutorial.aapl_historical_stock_price
  /* 164.77936176221417 is the average opening price */

  /* What was Apple's lowest stock price (at the time of this data collection)? */
  SELECT MIN(low)
  FROM tutorial.aapl_historical_stock_price
/* It was 6.36 */

/* What was the highest single-day increase in Apple's share value? */
SELECT MAX(close - open)
  FROM tutorial.aapl_historical_stock_price
/* highest was an increase of $32.58 */

/* Write a query that calculates the average daily trade volume for Apple stock. */
SELECT AVG(volume) AS avg_volume
  FROM tutorial.aapl_historical_stock_price
SELECT AVG(volume) AS avg_volume
/* 20745814.35 is the average */

/* Calculate the total number of shares traded each month. Order your results chronologically. */
SELECT year,
       month,
       SUM(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY year, month
 /* January seems like a heavy traded month */

/* Write a query to calculate the average daily price change in Apple stock, grouped by year. */
SELECT year,
       AVG(close - open) AS avg_daily_change
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1
 ORDER BY 1

 /* Write a query that calculates the lowest and highest prices that Apple stock achieved each month. */
 SELECT year,
       month,
       MIN(low) AS lowest_price,
       MAX(high) AS highest_price
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1, 2
 ORDER BY 1, 2


 /* 

