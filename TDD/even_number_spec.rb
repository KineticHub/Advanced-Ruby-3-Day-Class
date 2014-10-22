require_relative 'spec_helper_spec'
require_relative 'even_number'

describe EvenNumber do

  it 'give us an even number instance for 2' do
    expect(EvenNumber.new(2)).to_not be_nil
  end

  it 'should give EvenNumber 4 as the successor to EvenNumber 2' do
    expect(EvenNumber.new(2).succ).to eq EvenNumber.new(4)
  end

  it 'should be able to read back the value' do
    EvenNumber.new(2).value.should eq 2
  end

  it 'should give us a range of EvenNumber' do
    odd_numbers = (EvenNumber.new(2)..EvenNumber.new(4))
    odd_numbers.kind_of?(Range).should be_truthy
  end

  it 'should give us the right values for EvenNumber range' do
    odd_numbers = (EvenNumber.new(2)..EvenNumber.new(6))
    expect(odd_numbers.to_a).to eq [EvenNumber.new(2), EvenNumber.new(4), EvenNumber.new(6)]
  end

  it 'should fail when given odd numbers' do
    expect{EvenNumber.new(1)}.to raise_error('must init with even number')
  end

end