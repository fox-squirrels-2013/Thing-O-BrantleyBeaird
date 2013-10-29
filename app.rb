require 'sinatra'
require 'active_record'
require_relative './app/models/elephant'
require 'shotgun'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'pets_dev')

get '/' do
  erb :index
end

post '/' do
  e = Elephant.new#create!(:name => params[:name])
  e.name = params[:name]
  e.save
  redirect '/'
end

#asdf
