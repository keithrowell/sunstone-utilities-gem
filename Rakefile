require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


require_relative 'lib/sunstone'

# task :default => :migrate
# 
# 
# namespace :db do
#   
#   desc "create database"
#   task :create do
#     if defined?(RSpec)
#       db = SQLite3::Database.new( "db/firstTest.db" )
#     else
#       db = SQLite3::Database.new( "~/.sunstone/db" )
#     end
#     # ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
#   end
#     
#   desc "migrations"
#   task :migrate do
#     puts `whoami`
#     ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
#   end
#   
# end