require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb pets_dev`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb pets_dev`
  end
end
