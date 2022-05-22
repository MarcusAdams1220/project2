# Reel Reviews

<a href="https://sheltered-everglades-43597.herokuapp.com/">Click Here To Visit The Site</a>

## Features
<ol>
    <li>All visitors can browse through a library of movies & read reviews left by members of the site.</li>
    <li>Logged in members can write, edit & delete their own reviews.</li>
    <li>Logged in members also have access to the "My Reviews" page where they can see all the reviews they've written.</li>
    <li>If a user is not logged in, they will only be able to browse & read reviews left by others.</li>
</ol>

## Site Content
- Nav Bar:
    - Link to the home page
    - Link to the login/logout page
    - Link to the my reviews page
- Home Page:
    - Search bar to look up movies
- Search Results Page:
    - Display all the movies that include the user's search input.
- Movie Details Page
    - Poster & IMDB rating for the selected movie
    - All reviews written for the selected movie
    - Option for logged in users to leave a review
    - Option for logged in users to edit & delete their reviews
- "My Reviews" Page:
    - Display all movie reviews the user has written.


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

### Part Three: Allow users to search through a library of movies
<ul>
    <li>Use the OMDB API to create a variable containing all of the movies that include the user's search input.</li>
    <li>Iterate through the variable & display the poster & title of each movie on a search results page.</li>
    
</ul>

### Part Four: Allows user to select a movie to see it's rating & reviews
<ul>
    <li>Use the OMDB API to create a variable containing the details of the selected movie.</li>
    <li>Make each movie on the search results page clickable & take users to a page with the details of the selected movie.</li>
    <li>Iterate through the variable & display the movie's poster & IMDB rating on the information page.</li>
</ul>

### Part Five: Allows users to create, edit & delete reviews
<ul>
    <li>Add a "submit a review" section to the movie details page.</li>
    <li>Write a method that inserts the user's input into the database.</li>
    <li>Write a POST response that invokes the "create review" method when a user clicks the submit button.</li>
    <li>If the text input is empty, display an error message to the user.</li>
    <li>Only display the "submit a review" section to logged in users</li>
    <li>Add an "Edit Review" button to the page.</li>
    <li>Write a get repsonse to retrieve the user's review from the database.</li>
    <li>Write a put response to update the user's review in the database.</li>
    <li>Add an "Delete Review" button to the page.</li>
    <li>Write a delete response to remove the user's review from the database.</li>
</ul>

### Part Six: Create a page that shows the user all of their reviews.
<ul>
    <li>Create a page called "My Reviews"</li>
    <li>Write a method that retrieves all the reviews for that specific user.</li>
    <li>Iterate through the reviews & display them ont he page alongside the movie's poster & title.</li>
    <li>Use the get, put & delete responses from part five to allow users to edit & delete reviews from their "My Reviews" page. </li>
</ul>
