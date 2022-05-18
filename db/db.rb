def run_sql(sql, params=[])
   db = PG.connect(dbname: 'movie_reviews_app')
   data = db.exec_params(sql, params)
   db.close
   data 
end