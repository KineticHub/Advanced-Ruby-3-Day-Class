require_relative 'require'
class Position

  attr_accessor :cell, :neighbors

  def initialize(cell)
    @cell = cell
  end

end