require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  # set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    "Hello RockPaperScissors"
    erb :index
  end

  get '/newgame' do
    @name = params[:name]
    @choice = params[:choice]
    erb :newgame
  end

  get '/playerchoice' do
    erb :playerchoice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
