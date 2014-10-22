require_relative '../spec_helper.rb'
require_relative 'timer'

describe Timer do

  it 'should run our code' do
    expect { |block|
      Timer.time_code &block
    }.to yield_with_no_args
  end

  it 'should run our code' do
    flag = false
    Timer.time_code do
      flag = true
    end
    expect(flag).to be true
  end

  it 'should run for a certain time' do
    # Timer.stub(:get_time_difference).and_return(3)
    Time.stub(:now).and_return(0,3)
    result = Timer.time_code do
    end
    result.should be_within(0.1).of(3.0)
  end

  it 'should run our code multiple times' do
    counter = 0
    Timer.time_code(5) do
      counter += 1
    end
    counter.should eq 5
  end

  it 'should return the average runtime' do
    Timer.stub(:get_time_difference).and_return(10)
    result = Timer.time_code(10) do
    end
    result.should be_within(0.1).of(1.0)
  end

end