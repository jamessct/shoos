require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/shoos')

get('/shoos/new') do
  erb(:new)
end

post('/shoos') do
  @shoos = Shoos.new(params)
  @shoos.save
  erb(:create)
end

get('/shoos') do
  @shoos = Shoos.all
  erb(:index)
end

