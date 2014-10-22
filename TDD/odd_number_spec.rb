require_relative 'spec_helper_spec'
require_relative 'odd_number'

describe OddNumber do

  it 'give us an odd number instance for 1' do
    expect(OddNumber.new(1)).to_not be_nil
  end

  it 'should give OddNumber 3 as the successor to OddNumber 1' do
    expect(OddNumber.new(1).succ).to eq OddNumber.new(3)
  end

  it 'should be able to read back the value' do
    OddNumber.new(1).value.should eq 1
  end

  it 'should give us a range of OddNumbers' do
    odd_numbers = (OddNumber.new(1)..OddNumber.new(3))
    odd_numbers.kind_of?(Range).should be_truthy
  end

  it 'should give us the right values for OddNumber range' do
    odd_numbers = (OddNumber.new(1)..OddNumber.new(5))
    expect(odd_numbers.to_a).to eq [OddNumber.new(1), OddNumber.new(3), OddNumber.new(5)]
  end

  it 'should give us the odd numbers between two even numbers' do
    odd_numbers = (OddNumber.new(2)..OddNumber.new(6))
    odd_numbers.to_a.should eq [OddNumber.new(3), OddNumber.new(5), OddNumber.new(7)]
  end

end