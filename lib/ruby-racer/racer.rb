class Racer
  attr_reader :name

  ITERATIONS = 50000

  def initialize(title)
    @name = title
    @progress = setup_progress_bar
  end

  def race
    ITERATIONS.times do
      yield
      @progress.increment
    end
    @progress.reset
  end

  private

  def setup_progress_bar
    ProgressBar.create(
      :format => '%t %bᗧ%i %p%%',
      :title => "#{name}".colorize(color),
      :throttle_rate => 0.001,
      :total => ITERATIONS,
      :progress_mark => '_',
      :remainder_mark => '.'
    )
  end

  def color
    name == 'Ruby' ? :red : [ :green, :cyan, :magenta ].sample
  end
end
