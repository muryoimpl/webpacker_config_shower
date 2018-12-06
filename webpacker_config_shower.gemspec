$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "webpacker_config_shower/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "webpacker_config_shower"
  spec.version     = WebpackerConfigShower::VERSION
  spec.authors     = ["muryoimpl"]
  spec.email       = ["muryoimpl@gmail.com"]
  spec.homepage    = "https://github.com/muryoimpl/webpacker_config_shower"
  spec.summary     = "Output webpack.config.js in webpacker gem to STDOT"
  spec.description = "Output webpack.config.js in webpacker gem to STDOT"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.2"
  spec.add_dependency "webpacker", ">= 3.5.5"

  spec.add_development_dependency "sqlite3"
end
