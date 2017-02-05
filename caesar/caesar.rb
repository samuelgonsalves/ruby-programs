require 'sinatra'
require 'sinatra/reloader'

test_array = Array.new

get '/' do
	plaintext = params["plaintext"]
	
	if plaintext!=nil
		plaintext.downcase!

		test_array.clear

		plaintext.each_char do |i|
			i = i.ord
			if i > 122
				i = i - 122 + 97
				test_array.push(i)
			else
				test_array.push(i)
			end
		end

		test_array.map! {|i| i=i+5}
		
		char_array = Array.new

		test_array.each do |i|
			char_array.push(i.chr) 
		end
		cipher_text = char_array.join("")

	end
	erb :index, :locals => {:plaintext => plaintext,:cipher_text => cipher_text}
end