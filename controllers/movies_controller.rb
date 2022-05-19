get '/' do
    erb :'movies/index'
end

get '/search_results' do
    user_input = params['user_input']

    movies = HTTParty.get("https://omdbapi.com/?s=#{user_input}&apikey=6a610b16")['Search']

    erb :'movies/search_results', locals: {
        movies: movies,
        user_input: user_input
    }
end

get '/movie_details' do

    #Movie Info
    movie_title = movie_info['Title']
    poster_url = movie_info['Poster']
    realease_date = movie_info['Released']
    rating = movie_info['Rated']

    # Ratings
    imdb_rating = movie_info['Ratings'][0]['Value']
    rotten_tomatoes_rating = movie_info['Ratings'][1]['Value']
    metacritic_rating = movie_info['Ratings'][2]['Value']

    erb :'movies/movie_details', locals: {
        title: movie_title,
        poster_url: poster_url,
        realease_date: realease_date,
        rating: rating,
        imdb_rating: imdb_rating,
        rotten_tomatoes_rating: rotten_tomatoes_rating,
        metacritic_rating: metacritic_rating
    }
end