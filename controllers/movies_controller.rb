get '/' do
    erb :'movies/index'
end

get '/movie_details' do
    title = params['movie_title']
    movie_info = HTTParty.get("")
end