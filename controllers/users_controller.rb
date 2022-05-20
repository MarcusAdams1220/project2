get '/sign_up' do
    if (params['empty_sign_up_msg'] == nil) && (params['user_already_exists_msg'] == nil)
        erb :'users/sign_up', locals: {
            empty_sign_up_msg: "",
            user_already_exists_msg: ""
        }
    elsif params['empty_sign_up_msg'] != nil
        erb :'users/sign_up', locals: {
            empty_sign_up_msg: "You must enter all of your details to create an account",
            user_already_exists_msg: ""
        }
    else
        erb :'users/sign_up', locals: {
            empty_sign_up_msg: "",
            user_already_exists_msg: "This account already exists, try a different email"
        }
    end
end

post '/create_user' do
    name = params['name']
    user_email = params['email']
    password = params['password']

    user = find_user_by_email(user_email)

    if user == nil
        if (name == "") || (user_email == "") || (password == "")
            redirect '/sign_up?empty_sign_up_msg=true'
        else
            user = create_user(name, user_email, password).to_a[0]
            session['user_id'] = user['id']
            redirect '/'
        end
    else
        redirect '/sign_up?user_already_exists_msg=true'
    end
end

get '/login' do
    erb :'sessions/new'
end