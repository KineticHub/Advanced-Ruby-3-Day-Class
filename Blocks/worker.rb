module Worker
  def self.work (n=1)
    yielded = nil
    n.times{ yielded = yield }
    yielded
  end
end