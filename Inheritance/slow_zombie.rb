require_relative 'zombie'

class SlowZombie < Zombie
  def shamble
    puts 'sooo slow'
  end
end