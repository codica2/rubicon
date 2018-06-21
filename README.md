# Rubicon

Easy project version management.
Based on [A successful Git branching model](https://nvie.com/posts/a-successful-git-branching-model/) we have built this useful gem. It allows you to manage project version, branch-naming convention and git tags using rails tasks. 

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rubicon'
```

And then execute:
```
$ bundle install
```

Or install it yourself as:
```bash
$ gem install rubicon
```

## Available features

Update major version (1.X.X => 2.0.0)
```
bundle exec rails version:major
```
Update minor version (X.1.X => X.2.0)
```
bundle exec rails version:minor
```
Update patch version (X.X.1 => X.X.2)
```
bundle exec rails version:patch
```
## License

Rubicon is released under the [MIT License](https://opensource.org/licenses/MIT)

## About Codica

![Codica logo](https://www.codica.com/assets/images/logo/logo.svg)

Rubicon was started by the team at [Codica](https://www.codica.com/).


