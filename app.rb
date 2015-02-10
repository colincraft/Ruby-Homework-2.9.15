require 'sinatra'
require 'sinatra/reloader'
require './greeter'
require "better_errors"
also_reload './greeter.rb'
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end



# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  raise "tag must not be anything but 'life'" if params[:tag] != 'life'
  @greeter.quote(params[:tag])
end

# default /quote route
get '/quote' do
  @greeter.quote
end