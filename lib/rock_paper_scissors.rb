require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  
  # set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    "Hello RockPaperScissors"
    erb :index
  end

  get '/newgame' do
    @name = params[:name]
    erb :newgame
  end

  get '/playerchoice' do
    @choice = params[:choice]
    erb :playerchoice
  end

  get '/winner' do
    @choice = params[:choice]
    erb :winner
  end

  post '/winner' do
    redirect to('/endgame')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
