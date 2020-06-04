require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true # this will tell our application to look for the _method key in params
  end

  get "/" do
    erb :welcome
  end

  get "/artists" do
    @artist = Artist.all
    erb :index
  end

  get "/artists/new" do 
    erb :new
  end

  get "/artists/:id" do 
    @artist = Artist.find(params[:id])
    erb :show
  end

  post "/artists/new" do 
    redirect :artists/"#{artist.id}"
  end

end
