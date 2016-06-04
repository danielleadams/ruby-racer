require 'benchmark'

class Race
  def self.start(method, &block)
    iterations = 1000000

    pb = ProgressBar.create(:format     => '%t %bᗧ%i %p%%',
                       :rate_scale => lambda { |rate| rate / 2048 },
                       :title => 'Ruby Version'.colorize(:red),
                       :throttle_rate => 0.001,
                       :total => iterations,
                       :progress_mark => ' ',
                       :remainder_mark => '.')

    pb2 = ProgressBar.create(:format     => '%t %bᗧ%i %p%%',
                       :rate_scale => lambda { |rate| rate / 512 },
                       :title => 'Your Version'.colorize(:light_blue),
                       :throttle_rate => 0.001,
                       :total => iterations,
                       :progress_mark => ' ',
                       :remainder_mark => '.')

    x1 = Time.now
    iterations.times do
      t = Time.now
      [2,3,1].send(method)
      pb.increment
    end
    x2 = Time.now
    time1 = x2 - x1

    x3 = Time.now
    iterations.times do
      block.call([2,3,1])
      pb2.increment
    end
    x4 = Time.now
    time2 = x4 - x3

    puts time1
    puts time2
    puts "\n."

    if time2 < time1
      puts 'YOU WIN'.colorize(:green) + ' ヾ｜￣ー￣｜ﾉ'.colorize(:magenta)
    else
      puts 'YOU LOSE'.colorize(:red) + ' (>.<)'.colorize(:light_blue)
    end
  end
end
