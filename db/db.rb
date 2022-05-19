def run_sql(sql, params=[])
   # db = PG.connect(dbname: 'movie_reviews_app')
   db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'movie_reviews_app'})
   data = db.exec_params(sql, params)
   db.close
   data 
end