require 'sinatra'
require 'pry'
require 'pg'
require 'bcrypt'
require 'httparty'

enable :sessions

#Database
require './db/db'

#Models
require './models/user'
require './models/review'

# Controllers
require './controllers/movies_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'
require './controllers/reviews_controller'

# Helpers
require './helpers/sessions_helper'


