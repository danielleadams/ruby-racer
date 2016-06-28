[![Gem Version](https://badge.fury.io/rb/ruby-racer.svg)](https://badge.fury.io/rb/ruby-racer)
# RubyRacer

This gem allows you to write rewrite your Ruby methods and test them from the command line.

## Installation

    $ gem install ruby-racer

## Usage

```ruby
# my_method.rb

require 'ruby-racer'

method_name = :method_name

input = [1, 2, 3]

my_method = Proc.new do |input|
  # write method code here
end

RubyRacer.go(method_name, input, &my_method)
```

    $ ruby my_method.rb

## Preview

![Ruby Racer Preview](https://github.com/danielleadams/ruby-racer/blob/master/preview.gif)

## Contributing

1. Fork it ( https://github.com/danielleadams/ruby-racer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
