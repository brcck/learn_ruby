class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600).floor
    @seconds -= hours * 3600
    minutes = (@seconds / 60).floor
    @seconds -= minutes * 60
    "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end
end
