module Sunstone
  class Project < ActiveRecord::Base
    
    has_many :participants
    
    def self.git_name name
      name.dasherize
    end
    
    def self.slack_channel_name name
      channel_name = name.dasherize
      # reduce the channel name to 21 or less characters as per Slack channel name rules
      while channel_name.length > 21
        # pull the last word off the name
        a = channel_name.split('-')
        a.pop
        channel_name = a.join('-')
      end
      channel_name
    end
    
    
  end
end
