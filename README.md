# Final Project By ScarletFever

>## To Run via Terminal/console:
    *NOTE: 
        - You will need postgres working and have a db created called ScarletFeverDB
    *
    To setup postgres db:
    Run: sudo -u postgres psql
    Run: ALTER USER postgres PASSWORD 'MyPassword';
    Run: CREATE DATABASE ScarletFeverDB;
    Run: rake db:setup
    Run: rake db:migrate
    Run: rake db:seed
    
    *NOTE: 
        - Rails db:seed will only add in an admin user, the rest of the users will be required to be added
        manually with the website. The admin account username is: Admin and the password is: Adminpass.
        - Mailcatcher is needed to confirm emails. The confirmable module prevents the user from logging in unless
        they have confirmed their email. Installing the gem by running gem install mailcatcher and then opening the 
        link by running mailcatcher will send the email to the mailcatcher inbox.
        The email can then be confirmed there.
    *
>## To Run via Heroku:
    Just visit: https://scarletfeverfinalproject.herokuapp.com/

>## About the project:
    This project is a web-based assessment tool that can help peers share valuable feedback on presentations.
    The professor has the ability to add and create users, teams, and presentations to the class.

    The website contains views for two different types of users: students and teachers(admins). Using the
    admin panel, the teachers/professors have the ability to assign users and presentations to teams of their
    choice. The professor also has the ability to see the feedback on all the presentations so that they can be graded.
    Students can give feedback to presentations of their peers as well as see the feedback they received on their own presentation.

---

>## Features Implemented:
    1. Instructor/TA can create presentation event for which evaluation can then be submitted
    2. Audience members can submit scores and comments for a presentation
    3. Administrative interface
    4. Presenter has access to the feedback provided by the audience
    5. Authentication/login
    6. Javascript
    7. Application looks professional

>## Extentions Implemented:
    1. Prevent self-evaluation
    2. Admin dashboard to monitor submissions and mange evaluations
    3. Remind users about evaluations they haven't submitted using the warning button
    4. Changing enrollment for students who add or drop the course
    5. Mechanism for generation of presentations based on multiple teams
    6. Different output formats like a .csv of all data
    7. Users can see the average score of all the feedback they receive
    8. Filter presentations and feedbacks
    9. PostgreSQL with Heroku
