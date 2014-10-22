require_relative 'named_thing'
require 'Set'

class Monster
  include NamedThing

  attr_accessor :vulnerabilities, :dangers, :name
  attr_reader :nocturnal, :legs

  @@monster_count = 0
  @types = Set.new

  def self.inherited (klass)
    puts "#{klass} is a new type of Monster - oh noes!"
    @types << klass
  end

  def self.types
    @types
  end

  def self.count
    @@monster_count
  end

  def initialize (noc, legs, name="Monster", vul = [], dangers = [])
    @name            = name
    @nocturnal       = noc
    @vulnerabilities = vul
    @dangers         = dangers
    @legs            = legs

    @@monster_count += 1
    super name
  end

public

  def attack(human)
    puts "#{name} #{dangers.sample} #{human.name}!!"
  end

protected

  def whisper_creepily
    puts 'boooo.....'
  end

private

  def set_nocturnal_to_false
    @nocturnal = false
  end

end
