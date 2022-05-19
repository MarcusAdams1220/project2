post '/create_review' do
    movie_id = params['movie_id']
    review = params['review']

    create_review(movie_id, session['user_id'].to_i, review)
    
    redirect "/movie_details?movie_id=#{movie_id}"
end