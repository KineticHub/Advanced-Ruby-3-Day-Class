require 'rspec'
require_relative 'cell'
require 'spec_helper'

describe Cell do

  it 'should have a dead state next step' do
    Cell.next_state(Cell.DEAD)
    Cell.update
    expect(Cell.current_state).to eq Cell.DEAD
  end

  it 'should have a live state next step' do
    Cell.next_state(Cell.ALIVE)
  end

end