def create_review(movie_id, user_id, review)
    run_sql("INSERT INTO reviews(movie_id, user_id, review) VALUES($1, $2, $3)", [movie_id, user_id, review])
end