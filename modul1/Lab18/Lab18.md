![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | My first queries

Please, download the file applestore.csv.
Install MySQL/Postgresql on your computer.
Create a database
Upload the file as a new table of your database

Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**

create database if not exists applestore;
use applestore;
select*from applestore;
select prime_genre from applestore;
select prime_genre from applestore
group by prime_genre;

**2. Which is the genre with the most apps rated?**

select prime_genre from applestore
group by prime_genre
order by sum(cont_rating) desc ;
 ------>social network

**3. Which is the genre with most apps?**
select prime_genre from applestore
group by prime_genre
order by sum(prime_genre) desc ;
------> games


**4. Which is the one with least?**
------> book

**5. Find the top 10 apps most rated.**
select track_name from applestore
order by (rating_count_tot) desc;
Facebook
Pandora - Music & Radio
Pinterest
Bible
Angry Birds
Fruit Ninja Classic
Solitaire
PAC-MAN
Calorie Counter & Diet Tracker by MyFitnessPal
The Weather Channel: Forecast, Radar & Alerts
**6. Find the top 10 apps best rated by users.**
select track_name from applestore
order by (user_rating) desc;
:) Sudoku +
TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF
Plants vs. Zombies
Learn to Speak Spanish Fast With MosaLingua
Plants vs. Zombies HD
The Photographer's Ephemeris
Sudoku +
Learn English quickly with MosaLingua
Kurumaki Calendar -month scroll calendar-
Domino's Pizza USA

**7. Take a look at the data you retrieved in question 5. Give some insights.**
the top 10 apps most rated are social media and games 

**8. Take a look at the data you retrieved in question 6. Give some insights.**

**9. Now compare the data from questions 5 and 6. What do you see?**
the top 10 apps best rated are not the apps the most rated. It s more difficult to have a great score ranking when you have a lot of rate
**10. How could you take the top 3 regarding both user ratings and number of votes?**

select track_name, user_rating, rating_count_tot from applestore
order by user_rating desc, rating_count_tot desc
limit 10;

Plants vs. Zombies
Domino's Pizza USA
Plants vs. Zombies HD
TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF
Sworkit - Custom Workouts for Exercise & Fitness
Fieldrunners 2
Headspace
:) Sudoku +
Dragon Island Blue
Sudoku +
**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

the app with the most rate are free whereas the ones with the less rates so the less popular ones are not so people cares about the price.

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
