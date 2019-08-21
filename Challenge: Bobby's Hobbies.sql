/* Step 1: Insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.*/

CREATE TABLE persons (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER);

INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Angela Wolf", 50); //Step 1 - Mine (make it your own)

/*Step 2: Select the 2 tables with a join so you can see each person's name next to their hobby. */

SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;

/*Step 3: Add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.*/

SELECT persons.name, hobbies.name FROM persons
    JOIN  hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = "Bobby McBobbyFace";
