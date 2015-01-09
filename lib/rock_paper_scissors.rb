require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  # set :views, Proc.new { File.join(root, "..", "/views") }

  get '/' do
    "HelloWorld"
    erb :index
  end

  get '/newgame' do
    "Hey! Hey! Hey! What's your name?"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
