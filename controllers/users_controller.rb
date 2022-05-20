get '/sign_up' do
    erb :'users/sign_up'
end

post '/create_user' do
    name = params['name']
    user_email = params['email']
    password = params['password']

    user = find_user_by_email(user_email)

    if user == nil
        if (name == "") || (user_email == "") || (password == "")
            "Please make sure you enter your name, email & password"
        else
            user = create_user(name, user_email, password).to_a[0]
            session['user_id'] = user['id']
            redirect '/'
        end
    else
        # Display user already exists message
    end
end

get '/login' do
    erb :'sessions/new'
end