module Timer

  def self.time_code (n = 1)
    start_time = get_start_time
    n.times{ yield }
    get_time_difference(start_time)/n
  end

  def self.get_start_time
    Time.now()
  end

  def self.get_time_difference(start_time)
    Time.now() - start_time
  end

end