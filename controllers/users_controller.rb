get '/sign_up' do
    erb :'users/sign_up'
end

post '/create_user' do
    name = params['name']
    user_email = params['email']
    password = params['password']

    user = find_user_by_email(user_email)

    if user == nil
        create_user(name, user_email, password)
        redirect '/'
    end
end

get '/login' do
    erb :'sessions/new'
end