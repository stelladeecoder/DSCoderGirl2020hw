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

