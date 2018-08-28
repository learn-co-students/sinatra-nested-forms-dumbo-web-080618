require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
      #erb :index
    end

  get "/new" do
    erb :"pirates/new"
  end

  post "/pirates" do
    @pirate =  Pirate.new(params[:pirate])
    #binding.pry
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end
    @ship = Ship.all
    erb :"pirates/show"
    #binding.pry
  end

  end
end
