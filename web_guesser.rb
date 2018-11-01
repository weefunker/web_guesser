require 'sinatra'
require 'sinatra/reloader'

guess = rand(100)

get '/' do
    "Computer GUESSED #{guess}"
end