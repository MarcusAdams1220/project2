post '/create_review' do
    movie_id = params['movie_id']
    review = params['review']

    name = find_user_by_id(session['user_id'].to_i).to_a[0]['name']

    if review == ""
        # Display empty field message
    else
        create_review(movie_id, session['user_id'].to_i, review, name)
    end    
    
    redirect "/movie_details?movie_id=#{movie_id}"
end

get '/edit_review' do
    review = params['review']
    review_id = params['id']

    erb :'reviews/edit', locals: {
        review: review,
        review_id: review_id
    }
end

put '/update_review/:id' do
    review_edit = params['review_edit']
    review_id = params['id'].to_i
    
    review_hash = get_review(review_id)

    update_review(review_edit, review_hash['movie_id'], session['user_id'].to_i)

    redirect "/movie_details?movie_id=#{review_hash['movie_id']}"
end

delete '/delete_review/:id' do
    review_id = params['id']
    movie_id = params['movie_id']

    delete_review(review_id)

    redirect "/movie_details?movie_id=#{movie_id}"
end

get '/user_reviews' do
    user_id = params['user_id'].to_i
    review_hash = get_user_reviews(user_id)
    
    erb :'reviews/user_reviews', locals: {
        review_hash: review_hash,
        # movie_details: movie_details
    }
end