post '/sessions' do
    email = params['email']
    password = params['password']

    user = find_user_by_email(email)

    if (email == "") || (password == "")
        erb :'/sessions/new', locals: {
            incorrect_login_msg: "Please enter your email & password to log in"
        }
    elsif (user && BCrypt::Password.new(user['password_digest']) == password)
        session['user_id'] = user['id'] # => "1"
        redirect '/'
    else
        erb :'/sessions/new', locals: {
            incorrect_login_msg: "The email or password you entered is incorrect"
        }
    end
end

delete '/sessions' do
    session['user_id'] = nil
    redirect '/'
end