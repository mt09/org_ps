$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "org_ps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "org_ps"
  spec.version     = OrgPs::VERSION
  spec.authors     = ["wen"]
  spec.email       = ["wen@larvata.tw"]
  spec.homepage    = ""
  spec.summary     = "Summary of OrgPs."
  spec.description = "Description of OrgPs."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.1.4"
  spec.add_dependency "pundit", "~> 1.1.0"
  spec.add_dependency "ransack", "~> 1.8.4"
  spec.add_dependency "closure_tree", "~> 7.0.0"

  spec.add_development_dependency "mysql2", '0.5.2'
end
