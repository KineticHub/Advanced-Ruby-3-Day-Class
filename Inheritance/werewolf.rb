require_relative 'monster'
require_relative 'human'
require_relative 'bite_monster'
require 'Set'

class Werewolf < Monster
  include BiteMonster

  attr_reader :bite_count, :humans_bitten

  @@bite_count = 0
  @@humans_bitten = Set.new
  @humans_bitten = Set.new

  def initialize(noc=true, legs=[2..4], name ='Werewolf', vul=[:silver], dangers=[:bites, :claws])
    @am_i_human = false

    super noc, legs, name, vul, dangers
  end

  def is_werewolf?
    !is_human?
  end

  def is_human?
    @am_i_human
  end

  def bite(human)
    raise 'werewolf only bites humans' unless human.is_a? Human
    @@bite_count += 1
    @@humans_bitten << human
    @humans_bitten << human
    human.instance_eval do
      def bites?
        true
      end
    end
    super bite(human)
  end

  def turn_into_human
    @am_i_human = true
  end

  def turn_into_werewolf
    @am_i_human = false
  end

end