class Race
  def self.start(method, input, &block)
    pb2 = ::Racer.new('You')
    pb1 = ::Racer.new('Ruby')

    t2 = ::Timer.new
    t1 = ::Timer.new

    t2.measure_time do
      pb2.race { block.call(input) }
    end

    t1.measure_time do
      pb1.race { input.send(method) }
    end

    puts "\n"

    puts "#{pb2.name} Race Time: #{t2.display_time}".colorize(:cyan)
    puts "#{pb1.name} Race Time: #{t1.display_time}".colorize(:cyan)

    puts "\n"

    if t2.result_time < t1.result_time
      puts 'YOU WIN'.colorize(:green) + Moods::Happy.face
    else
      puts 'YOU LOSE'.colorize(:red) + Moods::Sad.face
    end

    puts "\n\n\n\n\n\n"
  end
end
