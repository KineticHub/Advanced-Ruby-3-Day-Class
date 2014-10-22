require_relative 'game_loader'

puts 'You are in the middle of EvilCastleLand, what is the map?:'

loop do
  puts 'What would you like to create? (Location or Path)'
  thing = gets.chomp

  module_to_call = Module.const_get("#{thing.capitalize}Helper")
  new_thing = module_to_call.send("#{thing.downcase}_maker")
  module_to_call.send("#{thing.downcase}_setup", new_thing)
  puts Location.current_location
  break if LocationHelper.ending_location? Location.current_location
end

# puts Location.all_names