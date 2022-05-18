get '/sign_up' do
    erb :'users/sign_up'
end

post '/create_user' do
    name = params['name']
    user_email = params['email']
    password = params['password']

    # email = run_sql("SELECT email FROM users").to_a

    # all_emails.each do |email|
    #     if email["email"] == user_email
    #         create_user(name, user_email, password)
    #         redirect '/'
    #     end
    # end

    create_user(name, user_email, password)

    redirect '/'
end

get '/login' do
    erb :'sessions/new'
end