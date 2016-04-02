## One to One
![one 2 one](imgs/one2one.png)

#Many to Many
![many 2 many](imgs/many2many.png)


##What is a one-to-one database?
A one to one database is a database relationship model that has two tables related and one of the tables is referencing another table in order to "connect" them.  That way when you change the value in the connected table, the originating table can see those changes due to this link up.

##When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You'd want to do this when you have some information that belongs to something else, but either of the two peices can change or the related database table can be null. 


##What is a many-to-many database?
That is a relationship model that maps out how another table can have multiple instances of each other that they belong to.  

##When would you use a many-to-many database? (Think generally, not in terms of the example you created).
Anytime you have information that can belong to many instances of another set of data.  for example, you can have many teachers that teach in many classrooms.  So not only do teachers "own" many class rooms, but classrooms also own many teachers.  

##What is confusing about database schemas? What makes sense?
What is most confusing is understanding how it is going to apply to the real world.  I don't understand the point of a one to one relationship when you can just add a field to the table with the primary key and call it a day.  You can have null values in a row field which is why I don't understand the need for a one to one relationship model.  