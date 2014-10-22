require_relative 'named_thing'
require_relative 'monster'
module BiteMonster
  def bites?
    true
  end

  def bite(other)
    raise 'can only bite things with a name' unless other.is_a? NamedThing
    ("#{other.name} has been bitten by #{self.name}!").upcase
  end

  def is_a?(object_class)
    return true if object_class.name=='Monster'
    super.is_a?(object_class)
  end

  def kind_of?(object_class)
    return true if object_class.name=='Monster'
    super.kind_of?(object_class)
  end

  def method_missing (name, *args, &block)
    Monster.send(name, *args, &block)
  end
end