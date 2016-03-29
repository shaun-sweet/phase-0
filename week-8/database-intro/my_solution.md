##What are databases for?
They are for storing information.

##What is a one-to-many relationship?
It is verbiage that describes a relationship between two columns in different tables.  For example if you had two tables representing a mother and a child.  The mother would be one mother that BELONGED to MANY children.  So basically you can have more than one kid thanks to 2016.

##What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a key that is put in the originating column and the foreign key basically "points" the primary key to the correct column in a different table.  So the values are exactly the same in each table.  

##How can you select information out of a SQL database? What are some general guidelines for that?
By entering the commands.  Use google.  BUTTT if you want me to break it down a bit....
you would enter SELECT to say which column you are wanting to see so for example:
SELECT column_name
Then you'd use the FROM keyword in order to specific from which table you want to select that particular column.  so for example....
SELECT column_name FROM table_name;

![database](https://github.com/shaun-sweet/phase-0/blob/master/week-8/database-intro/database.png)