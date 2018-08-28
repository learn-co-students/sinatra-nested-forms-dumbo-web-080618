require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
      @ships = params["pirate"]["ships"].map do |par|
        Ship.new(par["name"], par["type"], par["booty"])
      end
      erb :"pirates/show"
    end

  end
end
