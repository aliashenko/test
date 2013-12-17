require 'rspec'
require_relative 'reverse_array.rb'

describe "reverse array" do

  context "transforms the array of integers" do

    let(:input_array_integer) { (1..100).to_a }
    let(:reverse)     { input_array_integer.reverse }


    it { expect(reverse_array(input_array_integer)).to eq(reverse) }

    it { expect(reverse_array(reverse)).to eq(input_array_integer) }
  end

  context "transforms the string" do

    let(:input_array_string) { ('a'..'z').to_a }
    let(:reverse)     { input_array_string.reverse }


    it { expect(reverse_array(input_array_string)).to eq(reverse) }

    it { expect(reverse_array(reverse)).to eq(input_array_string) }

  end

  context "transforms the array of chars" do

    let(:input_array_char) { ('a'..'z').to_a + (1..10).to_a }
    let(:reverse)     { input_array_char.reverse }


    it { expect(reverse_array(input_array_char)).to eq(reverse) }

    it { expect(reverse_array(reverse)).to eq(input_array_char) }

  end
end
