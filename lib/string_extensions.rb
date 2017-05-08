require 'active_support/all'

class String
  def dehumanize
    self.underscore.parameterize.underscore 
  end
  
  def dasherize
    s = self.dehumanize.parameterize.underscore
    s.gsub "_", "-"
  end
end
