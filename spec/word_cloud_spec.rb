require 'spec_helper'
require 'word_cloud'

describe 'word_cloud' do
  it 'can output the dates covered in the log' do
    quote = <<-INPUT
  "Ila Huels": [
    "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
    "ENVISIONEER ROBUST E-COMMERCE",
    "TRANSFORM WIRELESS ARCHITECTURES",
    "redefine global platforms",
    "AGGREGATE FRICTIONLESS E-MARKETS",
    "TRANSFORM B2C SUPPLY-CHAINS",
    "E-ENABLE COMPELLING BANDWIDTH",
    "embrace scalable architectures",
    "ENGINEER B2C COMMUNITIES",
    "embrace e-business supply-chains",
    "enhance one-to-one partnerships"
    INPUT

    actual = WordCloud.new(quote).words
    expected = ["2014-05-10"]
    expect(actual).to eq expected
  end

end