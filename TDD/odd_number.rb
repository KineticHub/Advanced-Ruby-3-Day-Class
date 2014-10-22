class OddNumber

  include Comparable
  attr_reader :value

  def initialize(value)
    @value = value.even? ? value + 1 : value
  end

  def succ
    OddNumber.new(@value + 2)
  end

  def <=>(otherOddNumber)
    @value <=> otherOddNumber.value
  end
end