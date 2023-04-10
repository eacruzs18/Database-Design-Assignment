# Database-Design-Assignment

For this assignment, pretend you are a software engineer with the task to design and implement the backend for an app like Spotify. Your product team has listed business requirements below. Use them to design an entity relationship diagram (ERD) using any flowchart making tool like draw.io and then write a MySQL database schema using SQL. Fulfilling the requirements with your ERD is worth 6 points with the SQL file schema implementation with appropriate data types and constraints (primary key, foreign key, non-nullable, unique) is worth 3 points. Your product team has plans for a v2 of this app, so you will need to turn in a brief description of how you plan to migrate your schema, which is worth 1 point. This description does not have to be in depth with well defined relationships, just a general plan is sufficient.

Business Requirements for v1
Your app needs to store song metadata. Songs have a title, an artist, a duration, a genre, whether or not the song is explicit, and a link to the song in the cloud. Note that the format of the link does not matter for this project, just know that the link maxes out at 255 characters.

Your app needs to store information about artists. An artist has a first name, last name, and date of birth.

Your app needs to store genres. A genre simply has a name.

Your app needs to store users. A user has an email, first name, last name, and password (email should be unique, look up the MySQL unique constraint). Users can favorite songs, so that needs to be stored in the database as well. Users can also create a single playlist with as many songs as they want. This playlist also keeps track of the order/rank of each song in the playlist.

For the purposes of this app, a single song can only have one artist, but an artist can write many songs. A single song could have multiple genres and multiple songs could have the same genre.

Business requirements for v2
Your product manager has already started scoping out more features for this app. Because of your team's tight deadline, these new features will be moved to v2. While you do not have to worry about v2 requirements while designing v1, it would probably be a good idea to keep them in mind so you allow for enough flexibility and do not design your app into a corner.

In v2, users will be able to create multiple playlists instead of just one.

Users will have multiple account types, each with different privileges (the product team is still working on what the types are, but right now it seems like "free", "standard", and "premium" are likely options).
