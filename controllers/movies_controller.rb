get '/' do
    erb :'movies/index', locals: {
        invalid_search_msg: ""
    }
end

get '/search_results' do
    user_input = params['user_input']

    movies = HTTParty.get("https://omdbapi.com/?s=#{user_input}&apikey=6a610b16")

    if movies["Response"] == "False"
        # Show too many results message
        erb :'movies/index', locals: {
            invalid_search_msg: "Too many results! Make your search more specific",
        }
    else
        erb :'movies/search_results', locals: {
            invalid_search_msg: "",
            movies: movies['Search'],
            user_input: user_input
        }
    end    
end

get '/movie_details' do
    movie_id = params['movie_id']

    details = HTTParty.get("https://omdbapi.com/?i=#{movie_id}&apikey=6a610b16")

    reviews = run_sql("SELECT * FROM reviews WHERE movie_id = $1", [movie_id]).to_a

    movie_title = details['Title']
    poster_url = details['Poster']
    release_date = details['Released']
    imdb_rating = details['Ratings'][0]['Value']
    imdbID = details['imdbID']

    erb :'movies/movie_details', locals: {
        movie_title: movie_title,
        poster_url: poster_url,
        release_date: release_date,
        imdb_rating: imdb_rating,
        imdbID: imdbID,
        reviews: reviews
    }
end