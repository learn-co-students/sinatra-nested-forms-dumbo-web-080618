require './environment'
# require'/app/models/pirate.rb'
# require '/app/models/ship.rb'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params['pirate']['name'], params['pirate']['weight'],params['pirate']['height'])

      params['pirate']['ships'].each{|ship|
       Ship.new(ship['name'], ship['type'], ship['booty'])}
       @ship1 = Ship.all[0]
       @ship2 = Ship.all[1]
      # @ship1 = Ship.new(params['pirate']['ships'][0]['name'], arams['pirate']['ships'][0]['type'], params['pirate']['ships'][0]['booty'])
      # @ship2 = Ship.new(params['ship_name_2'], params['ship_type_2'], params['ship_booty_2'])
      
      erb :'pirates/show'
    end
  end
end
