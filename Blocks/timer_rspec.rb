require "#{File.dirname(__FILE__)}/timer"
require_relative '../spec_helper'
describe Timer do
  include Timer

  it "should report the time difference" do
    Time.stub(:now).and_return(0,3)
    time_difference = run_code do
    end
    time_difference.should be_within(0.1).of(3.0)
  end

  it "should run our code" do
    flag = false
    run_code do
      flag = true
    end
    flag.should be_truthy
  end

  it "should run our code multiple times" do
    counter = 0
    result = run_code(17) {counter += 1}
    counter.should equal 17
  end

  it "should give the average time" do
    Time.stub(:now).and_return(0,10)
    result = run_code(10) { }
    result.should be_within(0.1).of(1)
  end

end
