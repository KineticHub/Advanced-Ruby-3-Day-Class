class Location

  def self.all
    @@locations
  end

  def self.all_names
    all.map{|l| l.name}
  end

  def self.current_location
    @@current
  end

  def current_location=(name)
    @@current = name
  end

  @@locations = []
  @@current = ''

  attr_accessor :name

  def initialize
    @@locations << self
  end
end