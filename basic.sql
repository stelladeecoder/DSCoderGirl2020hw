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


/* Write a query that calculates the percentage of all houses completed in the United States represented by each region. Only return results from the year 2000 and later. */

SELECT year,
       month,
       west/(west + south + midwest + northeast)*100 AS west_pct,
       south/(west + south + midwest + northeast)*100 AS south_pct,
       midwest/(west + south + midwest + northeast)*100 AS midwest_pct,
       northeast/(west + south + midwest + northeast)*100 AS northeast_pct
  FROM tutorial.us_housing_units
 WHERE year >= 2000

 /* returns 100 rows */

/* Write a query that returns all rows for which Ludacris was a member of the group. */

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE '%ludacris%'
 /* To ignore case when you're matching values, you can use the ILIKE command */


 /* Write a query that returns all rows for which the first artist listed in the group has a name that begins with "DJ". */

 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" LIKE 'DJ%'

 /* Use LIKE instead of ILIKE */


 /* Write a query that shows all of the entries for Elvis and M.C. Hammer. */

 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" IN ('M.C. Hammer', 'Hammer', 'Elvis Presley')
 /* M.C. Hammer is actually on the list under multiple names, so I had to first write a query to figure out exactly how M.C. Hammer is listed. */


/* Write a query that shows all top 100 songs from January 1, 1985 through December 31, 1990. */

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year BETWEEN 1985 AND 1990
 /* Where is the year use between 1985 and 1990 */


/* Write a query that shows all of the rows for which song_name is null. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE song_name IS NULL
 /* returns 6 rows */

 /* Write a query that surfaces all rows for top-10 hits for which Ludacris is part of the Group. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank <= 10
   AND "group" ILIKE '%ludacris%'
/* returns 7 rows in 2004 2007 and 2010 */

/* Write a query that surfaces the top-ranked records in 1990, 2000, and 2010. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank = 1
   AND year IN (1990, 2000, 2010)
/* Hold On 1990, Breathe 2000 and TikTok 2010 */

/* Write a query that lists all songs from the 1960s with "love" in the title. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year BETWEEN 1960 AND 1969
   AND song_name ilike '%love%'
/* 89 songs between 1960 and 1969 */

/* Write a query that returns all rows for top-10 songs that featured either Katy Perry or Bon Jovi. */
 SELECT *
      FROM tutorial.billboard_top_100_year_end
     WHERE year_rank <= 10
       AND ("group" ILIKE '%katy perry%' OR "group" ILIKE '%bon jovi%')
/* 8 songs from 1987 t0 2013 */

/* Write a query that returns all songs with titles that contain the word "California" in either the 1970s or 1990s. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE song_name LIKE '%California%'
   AND (year BETWEEN 1970 AND 1979 OR year BETWEEN 1990 AND 1999)
/* I'm surprised it's only 3 songs */

/* Write a query that lists all top-100 recordings that feature Dr. Dre before 2001 or after 2009. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE '%dr. dre%'
   AND (year <= 2000 OR year >= 2010)
/*It's 6 songs but 13 entries */

/* Write a query that returns all rows for songs that were on the charts in 2013 and do not contain the letter "a". */
SELECT *
      FROM tutorial.billboard_top_100_year_end
     WHERE song_name NOT ILIKE '%a%'
       AND year = 2013
/* only 66 songs */

/* Write a query that returns all rows from 2012, ordered by song title from Z to A. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2012
 ORDER BY song_name DESC
/* use DESC for descending order */

/* Write a query that returns all rows from 2010 ordered by rank, with artists ordered alphabetically for each song. */
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2010
 ORDER BY year_rank, artist
 /* use ORDER BY */

 /* Write a query that shows all rows for which T-Pain was a group member, ordered by rank on the charts, from lowest to highest rank (from 100 to 1). */
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE '%t-pain%'
 ORDER BY year_rank DESC
 /* ORDER BY and DESC */

 /* Write a query that returns songs that ranked between 10 and 20 (inclusive) in 1993, 2003, or 2013. 
 Order the results by year and rank, and leave a comment on each line of the WHERE clause to indicate what that line does */
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year IN (2013, 2003, 1993)  
   AND year_rank BETWEEN 10 AND 20  
 ORDER BY year, year_rank
/* Selected the years that were relevant and limited it rank between 10 and 20 */








