require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/cost') do
  @height = params.fetch('height')
  @length = params.fetch('length')
  @width = params.fetch('width')
  @weight = params.fetch('weight')
  test_parcel = Parcel.new(params.fetch('height').to_i, params.fetch('length').to_i, params.fetch('width').to_i, params.fetch('weight').to_i)
  @cost = test_parcel.cost_to_ship()
  erb(:cost)
end
