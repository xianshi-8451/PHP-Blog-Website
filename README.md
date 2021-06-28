# Description

I created this probject to showcase my understanding of PHP as well as SQL. I incorporated the following main features into the website:
1. Registering new accounts as well as managing existing accounts.
2. Posting, filtering, and removing content. 
3. Searching and commenting on posts.

# How to use
1. Clone this repo. 
2. Create a database named "cms" in phpMyAdmin.
3. Import the file cms.sql in phpMyAdmin to populate the database you just created.
4. For XAMPP users, please remove "root" from the password field in db.php in the includes folder. 
5. Start MAMP or XAMPP. 
6. Navigate to the folder that contains the files.
7. Log in use the username "xian" and password "123". You are free to register a new account as well.
8. Please note you need to "approve" your comment in admin before it can show up. 

# Challenges I faced
PHP is fairly straightforward and easy to understand. But I think it's harder to troubleshoot errors in PHP than in other programming languages.
Sometimes errors occured because there's an error in my PHP syntax. However, I also encountered situations where my PHP code was correct but 
the SQL queries were wrong. I also had to modify my database a few times to ensure the program runs smoothly. 

# Features I plan to add
There are some features that are desirable. I plan to improve the user registration process. I also plan to distinguish "admin" from "subscriber" accounts
so that each has different purpose and privileges. It's not reasonable to give admin access to "subscribers." 


