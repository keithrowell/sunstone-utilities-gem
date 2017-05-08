require 'commands'
require 'gli'

module Sunstone
    
  include GLI::App
  extend self
  
  program_desc 'Getting shit done at Sunstone.'
  
  version '1.1.1'
  
  subcommand_option_handling :normal
  arguments :strict
  
  desc 'project commands'
  command :project do |project_command|
    project_command.instance_eval do
      arg 'name'
      desc 'create a new project'
      command :new do |new_command|
        new_command.action do |global_options, options, args|
          Sunstone::Commands::Project::new args
        end
      end
      
      command :users do |users_command|
        users_command.action do |global_options, options, args|
          # Commands::Rails::Console.new(args).execute
        end
      end
    end
  end
  
  desc "create a git ignore file"
  command :gitignore do |gitignore_command|
    gitignore_command.action do |global_options, options, args|
      puts "======= gitignore ======="
      # Commands::Shell.new(args).execute
    end
  end
  
  pre do |global, command, options, args|
    # Pre logic here
    # Return true to proceed; false to abort and not call the
    # chosen command
    # Use skips_pre before a command to skip this block
    # on that command only
    true
  end
  
  post do |global, command, options, args|
    # Post logic here
    # Use skips_post before a command to skip this
    # block on that command only
  end
  
  on_error do |exception|
    # Error logic here
    # return false to skip default error handling
    true
  end
  
  unless defined?(RSpec) or defined?(Rails)
    exit run(ARGV)
  end
  
  
end