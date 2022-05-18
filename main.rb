require 'sinatra'
require 'pry'
require 'pg'
require 'bcrypt'

enable :sessions

#Database
require './db/db'

#Models
require './models/user'

# Controllers
require './controllers/movies_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

# Helpers
require './helpers/sessions_helper'


