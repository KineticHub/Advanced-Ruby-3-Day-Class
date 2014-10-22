require_relative 'require'
class Cell

  ALIVE = 'ALIVE'
  DEAD = 'DEAD'

  attr_accessor :next_state, :current_state

  def initialize (state)
    @current_state = state
  end

  def update
    @current_state = @next_state
  end

end