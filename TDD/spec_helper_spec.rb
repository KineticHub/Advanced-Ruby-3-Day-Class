require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

# def translate(input)
#   first_vowel_index = (input[0..1] == 'qu') ? 2 : input.index(/[aeiouy]/)
#   end_letters = (input[0..1] == 'qu') ? 'qu' : (input[0] == 'y') ? 'y' : input[0..first_vowel_index-1]
#   input[first_vowel_index..input.size] + end_letters + 'ay'
# end
#
# describe 'translates pig latin thing' do
#
#   it 'turns Happy into appyHay' do
#     expect(translate('Happy')).to eq('appyHay')
#     translate('Happy').should eq 'appyHay'
#   end
#
#   it 'turns sad into adsay' do
#     translate('sad').should eq 'adsay'
#   end
#
#   it 'turns you into youyay' do
#     translate('you').should eq 'youyay'
#   end
#
#   it 'turns quick into ickquay' do
#     translate('quick').should eq 'ickquay'
#   end
# end