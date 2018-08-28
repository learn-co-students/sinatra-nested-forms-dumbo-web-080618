require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = @pirate[:ships]

      erb :"pirates/show"
    end

    get '/' do
      erb :root
    end
  end
end
