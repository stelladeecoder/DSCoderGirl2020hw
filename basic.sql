/* Write a query to select all of the columns in the tutorial.us_housing_units table without using */

SELECT year,
       month,
       month_name,
       west,
       midwest,
       south,
       northeast
  FROM tutorial.us_housing_units
/* I listed all the columns in the turtorial.us_hoousing_units table */


/* Write a query to select all of the columns in tutorial.us_housing_units and rename them so that their first letters are capitalized. */

SELECT year AS "Year",
       month AS "Month",
       month_name AS "Month Name",
       west AS "West",
       midwest AS "Midwest",
       south AS "South",
       northeast AS "Northeast"
  FROM tutorial.us_housing_units
  /* Use AS to Remane columns. Columns are string names with "" */

/* Write a query that uses the LIMIT command to restrict the result set to only 15 rows. */

SELECT *
  FROM tutorial.us_housing_units
 LIMIT 15
/* Limit restticts the table to 15 rows */


/* Did the West Region ever produce more than 50,000 housing units in one month? */
SELECT *
  FROM tutorial.us_housing_units
 WHERE west > 50
 /* In June 1978, August 1978 and Decmenber 2004 */


 /* Did the South Region ever produce 20,000 or fewer housing units in one month? */

SELECT *
  FROM tutorial.us_housing_units
 WHERE south <= 20
 /* Jan , May of 2011 and  January, February of 2012 */

 /* Write a query that only shows rows for which the month name is February. */

SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name = 'February'
/* returned 47 rows */


/* Write a query that only shows rows for which the month_name starts with the letter "N" or an earlier letter in the alphabet. */

SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name < 'O'

/* Use the letter after 'N' to include months that begin with the letter 'N' */

/* Write a query that calculates the sum of all four regions in a separate column. */

SELECT year,
       month,
       west,
       south,
       midwest,
       northeast,
       west + south + midwest +northeast AS usa_total
  FROM tutorial.us_housing_units
/* add all four regions together */

/*Write a query that returns all rows for which more units were produced in the West region than in the Midwest and Northeast combined. */

SELECT year,
       month,
       west,
       south,
       midwest,
       northeast
  FROM tutorial.us_housing_units
  WHERE west > (midwest + northeast)
  /* make the west > ( grater than) the midwest and noreast combined (add them) */


/* Write a query that calculates the percentage of all houses completed in the United States represented by each region. Only return results from the year 2000 and later. *?

SELECT year,
       month,
       west/(west + south + midwest + northeast)*100 AS west_pct,
       south/(west + south + midwest + northeast)*100 AS south_pct,
       midwest/(west + south + midwest + northeast)*100 AS midwest_pct,
       northeast/(west + south + midwest + northeast)*100 AS northeast_pct
  FROM tutorial.us_housing_units
 WHERE year >= 2000

 /* returns 100 rows */

 






