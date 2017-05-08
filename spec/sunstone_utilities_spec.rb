require "spec_helper"

RSpec.describe SunstoneUtilities do
  it "has a version number" do
    expect(SunstoneUtilities::VERSION).not_to be nil
  end

  it 'has a git name' do
    expect(SunstoneUtilities::git_name('This is My Project')).to eq 'this-is-my-project'
    
    expect(SunstoneUtilities.git_name('This is My Project with a very long name')).to eq 'this-is-my-project-with-a-very-long-name'
  end
  
  it 'has a slack channel name' do
    expect(SunstoneUtilities.slack_channel_name('My Project')).to eq 'my-project'
    
    expect(SunstoneUtilities.slack_channel_name('This is My Project with a very long name')).to eq 'this-is-my-project'
  end
end
