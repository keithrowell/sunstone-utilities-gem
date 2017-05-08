# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunstone_utilities/version'

Gem::Specification.new do |spec|
  spec.name          = "sunstone_utilities"
  spec.version       = SunstoneUtilities::VERSION
  spec.authors       = ["Keith Rowell"]
  spec.email         = ["keith@keithrowell.com"]
  
  spec.summary       = %q{Getting shit done at Sunstone}
  spec.description   = %q{Getting shit done at Sunstone}
  spec.homepage      = "https://gitlab.com/sunstonesolutions/sunstone-utilities-gem"
  spec.license       = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
    "public gem pushes."
  end
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  # spec.bindir        = "bin"
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  # spec.add_dependency 'escort', :path => '../vendor/escort'
  # spec.add_dependency 'gli'
  # spec.add_dependency 'httparty'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'activerecord'
  # spec.add_dependency 'sqlite3'
  
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
