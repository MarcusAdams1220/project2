# Movie Review Site

## Features
<ol>
<li>Users can browse through a library of movies & read reviews left by members of the site.</li>

<li>Logged in users can leave their own reviews.</li>

<li>Logged in users can also save movies to their 'liked' collection.</li>

<li>If a user is not logged in, they will only be able to browse & read reviews left by others.</li>
</ol>

## Site Content
- Nav Bar:
    - Link to the home page
    - Link to the login/logout page
    - Link to the liked movies page
- Home Page:
    - Search bar to look up movies
    - Display the top 10 highest rated movies (clickable)
- Search Results Page:
    - List of all movies that contain the user's input
- Movie Page
    - Poster & info for the selected movie
    - All reviews for the selected movie
    - Option for the user to leave a review
        - User must be logged in to leave a review
    - Option for the user to like the movie
        - User must be logged in to like a movie
- Liked Movies Page:
    - Display all movies the user has liked


## My Approach To Complete This Project
### Part One: Allow users to create a new account
<ul>
<li>Create a database for the app.</li>
<li>Create a home page with a "sign up" button.</li>
<li>Create a sign up page where users can enter their name, email & password.</li>
<li>Create a 'users' table in the database to store user info.</li>
<li>Write a method that returns data from the database.</li>
<li>Write a method that stores the new user's data into the 'users' table when they sign up.</li>
<li>Write an if statement to check if the email already exists & display an 'email already exists' message. </li>
<li>After signing up, redirect users to the homepage.</li>
<li>Write a method to check if the user is logged in</li>
<li>Write an if statement on the homepage to hide/show the login/logout buttons depending on whether or not the user is logged in.</li>
</ul>


### Part Two: Allow users to login & logout
<ul>
<li>Create a logout button that's only disaplyed to logged in users.</li>
<li>Write a method that sets the session id to nil (logs the user out) when the logout button is clicked & redirects them to the homepage.</li>
</ul>
