def create_review(movie_id, user_id, review, name)
    run_sql("INSERT INTO reviews(movie_id, user_id, review, name) VALUES($1, $2, $3, $4)", [movie_id, user_id, review,name])
end

def get_review(id)
    run_sql("SELECT * FROM reviews WHERE id = $1", [id])[0]
end

def update_review(new_review, movie_id, user_id)
    run_sql("UPDATE reviews SET review = $1 WHERE movie_id = $2 AND user_id = $3", [new_review, movie_id, user_id])
end

def delete_review (review_id)
    run_sql("DELETE FROM reviews WHERE id = $1", [review_id])
end

def get_user_reviews(user_id)
    run_sql("SELECT * FROM reviews WHERE user_id = $1", [user_id]).to_a
end