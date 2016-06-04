require 'colorize'
require 'ruby-progressbar'
require 'byebug'

require_relative 'ruby-racer/race'
require_relative 'tests/min'

class RubyRacer
  def self.go(method, &block)
    ::Race.start(method, &block)
  end
end

proc = Proc.new do |arr|
  min_method(arr)
end

RubyRacer.go(:min, &proc)
