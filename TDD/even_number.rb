class EvenNumber
  include Comparable
  attr_reader :value

  def self.new(val)
    #raising this error here will stop the object from initializing
    raise 'must init with even number' if val.odd?
    super
  end

  def initialize(value)
    @value = value
  end

  def succ
    EvenNumber.new(@value + 2)
  end

  def <=>(otherEvenNumber)
    @value <=> otherEvenNumber.value
  end
end