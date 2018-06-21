$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
# require "rubicon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rubicon'
  s.version     = '0.0.1'
  s.authors     = ['RostislavKor', 'volkov-sergey']
  s.email       = ['rkorin.codica@gmail.com', 'sergvolkov.codica@gmail.com']
  s.homepage    = 'https://github.com/codica2/rubicon'
  s.summary     = 'Easy project version management.'
  s.description = 'Based on [A successful Git branching model](https://nvie.com/posts/a-successful-git-branching-model/) we have built this useful gem. It allows you to manage project version, branch-naming convention and git tags using rails tasks.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_dependency 'systemu', '>= 0'

  s.add_development_dependency 'sqlite3'
end
