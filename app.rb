require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get("/") do
  erb(:index)
end

get("/parcel") do
  @parcel = Parcel.new(params.fetch('width').to_i(), params.fetch('height').to_i(), params.fetch('length').to_i())
  @cost = @parcel.cost_to_ship(params.fetch('weight').to_i(), params.fetch('speed').to_i(), params.fetch('distance').to_i())
  @cost = sprintf("%.2f", @cost)
  erb(:parcel)
end
