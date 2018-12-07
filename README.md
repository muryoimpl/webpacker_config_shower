# WebpackerConfigShower

WebpackerConfigShower tries to print webpack.config.js in [Webpacker](https://github.com/rails/webpacker) gem to STDOUT.

**But WebpackerConfigShower cannot print `plugins` part, it can print plugins only as expanded objects.**

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'webpacker_config_shower', group: :development
```

And then execute:
```bash
$ bundle
```

## Usage

```bash
$ bin/rails webpacker:config:show
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
