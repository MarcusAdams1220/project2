get '/' do
    erb :'movies/index'
end

get '/search_results' do
    user_input = params['user_input']

    movies = HTTParty.get("https://omdbapi.com/?s=#{user_input}&apikey=6a610b16")

    erb :'movies/search_results', locals: {
        movies: movies['Search'],
        user_input: user_input
    }
end

get '/movie_details' do
    title = params['movie_title']

    details = HTTParty.get("https://omdbapi.com/?t=#{title}&apikey=6a610b16")

    movie_title = details['Title']
    poster_url = details['Poster']
    release_date = details['Released']
    imdb_rating = details['Ratings'][0]['Value']

    erb :'movies/movie_details', locals: {
        movie_title: movie_title,
        poster_url: poster_url,
        release_date: release_date,
        imdb_rating: imdb_rating,
    }
end