require 'sinatra'
require 'sinatra/reloader'

number = rand(50)
get '/' do
	message = ""
	if params["guess"].to_i == nil
		message = ""
	else
		guessed_number = params["guess"].to_i 
	end
	
	if message == ""
		if guessed_number == number
			message = "Correct Guess"
		elsif (guessed_number - number) > 5
			message = "Way Too high"
		elsif guessed_number > number 
			 message = "Too High"
		elsif number - guessed_number > 5 
			message = "Way too Low"		
		elsif guessed_number < number 
			 message = "Too Low"
		end
	end

	erb :index, :locals => {:number => number,:message => message}
	
end

