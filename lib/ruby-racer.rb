require 'colorize'
require 'ruby-progressbar'

require_relative 'ruby-racer/moods/happy'
require_relative 'ruby-racer/moods/sad'
require_relative 'ruby-racer/race'
require_relative 'ruby-racer/racer'
require_relative 'ruby-racer/timer'

class RubyRacer
  def self.go(method, input, &block)
    ::Race.start(method, input, &block)
  end
end
