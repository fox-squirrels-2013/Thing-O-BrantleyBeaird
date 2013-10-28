require 'sinatra'
require 'active_record'
require_relative './app/models/elephant'
require 'shotgun'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'pets_dev')

get '/' do
  "Hello Bob!"
end
