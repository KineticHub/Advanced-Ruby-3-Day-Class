require 'rspec'
require 'require'

describe Game do
  context Board do
    it 'should give me the current board configuration' do
      b = Board.new(5)
      expect(b.grid.size).to eq 5
    end

    context Cell do
      it 'should give me the state of a cell' do
        c = Cell.new(Cell::ALIVE)
        expect(c.current_state).to be_truthy
      end
    end

    context Position do
      it 'should give me the state of a cells neighbors' do
        p = Position.new()
        expect(p.neighbors).to eq []
      end
    end
  end
end