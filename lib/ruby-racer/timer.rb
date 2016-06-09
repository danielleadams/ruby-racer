class Timer
  attr_reader :result_time

  def initialize
    @result_time = nil
  end

  def measure_time
    begin_time = Time.now
    yield
    end_time = Time.now

    @result_time = end_time - begin_time
  end

  def display_time
    result_time.to_s + ' seconds'
  end
end
