module LocationHelper

  ENDING_LOCATION = 'End'

  def self.location_maker
    Location.new
  end

  def self.location_setup(l)
    puts 'tell me the name of the location:'
    l.name = get_user_input
    l.current_location=l.name
  end

  def self.ending_location?(l)
    l == ENDING_LOCATION
  end

private

  def self.get_user_input
    gets.chomp
  end
end