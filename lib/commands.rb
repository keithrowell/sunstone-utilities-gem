require 'active_support/inflector'

  

module Sunstone
  
  GITIGNORE = <<-EOF
  /.bundle/
  /.yardoc
  /Gemfile.lock
  /_yardoc/
  /coverage/
  /doc/
  /pkg/
  /spec/reports/
  /tmp/
  
  # rspec failure tracking
  .rspec_status
  
  *.DS_Store
  *markdown-themeable-pdf
  
  EOF
  
  
  class Project
    
    attr_accessor :name
    
    def initialize name
      self.name = name
      # super
    end
    
    def create
      puts "create new project #{self.name}"
      create_base_directory self.name
      create_directory_structure self.name
      create_gitignore self.name
      create_repository self.name
    end
    
    def create_repository project_name
      puts "create repo #{project_name.dasherize}"
    end
    
    def clone_repository project_name
      
    end
    
    def create_base_directory project_name
      dir_name = project_name.dehumanize
      system "mkdir #{dir_name}" unless Dir.exist? dir_name
    end
    
    def create_directory_structure project_name
      dir_name = project_name.dehumanize
      begin
        system "cd #{dir_name}; mkdir dir_1 ; mkdir dir_2 " 
      rescue
      end
    end
    
    def create_gitignore project_name
      gitignore_file_name = [project_name.dehumanize, ".gitignore"].join('/')
      unless File.exist? gitignore_file_name
        File.open(gitignore_file_name, 'w') do |f|
          f.puts Sunstone::GITIGNORE
        end  
      end
    end
    
    protected
    
  end
  
  module Commands
    
    class Project
      def self.new args
        # puts "create new project #{args.first}"
        project = Sunstone::Project.new args.first
        project.create
      end
    end
  end
end
