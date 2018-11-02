require 'sinatra'
require 'sinatra/reloader'

set :SECRET_NUMBER, rand(100)

def check_guess(guess)
    if guess < SECRET_NUMBER
        "Your Guess is Too LOW!"
      elsif guess > SECRET_NUMBER
        "Your Guess is Too HIGH!"
      else
        "Conguratulations! You guessed it right:)"
      end

end


get '/' do
    
    guess = params["guess"].to_i
    message = check_guess(guess)
    erb :index, :locals => {:message => message}
end


