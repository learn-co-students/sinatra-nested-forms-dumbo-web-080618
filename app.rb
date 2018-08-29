require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      "Welcome to the Nested Forms Lab!let's navigate to the '/new'"

    end
    get "/new" do

     erb :"pirates/new"
    end

    post "/pirates" do
      @np = Pirate.new(params[:pirate]) #made a new instance of pirate
      @sh = params[:pirate][:ships].each{|boat| Ship.new(boat) } #boat is the hash with name type booty and its values, so boat is the hash with those attributes
      @all = Ship.all #see all the  new ships
      erb :"/pirates/show"

    end
    # code other routes/actions here
  end
end
