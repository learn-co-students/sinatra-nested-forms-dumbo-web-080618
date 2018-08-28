require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do

      erb :root
    end

    get "/new" do

      erb :"pirates/new"
    end

    post "/pirates" do
      @pir = Pirate.new(params["pirate"])
      @ships = params["pirate"]["ships"]
      erb :"pirates/show"
    end
  end
end
