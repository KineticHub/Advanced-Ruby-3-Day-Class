require_relative 'monster'
require_relative 'fast_zombie'
require_relative 'bite_monster'

class Zombie < Monster
  include BiteMonster

  @@zombie_count = Hash.new(0)

  def self.count
    @@zombie_count.values.inject(:+)
  end

  def self.fast_zombies
    @@zombie_count[FastZombie]
  end

  def initialize(noc=false, legs=2, name ='Zombie', vul=[:headshot, :decapitation], dangers=[:bites, :infection])
    @@zombie_count[self.class] += 1
    super noc, legs, name, vul, dangers
  end

  def say_name
    "uuurrrggghhhh #{@name}"
  end
end