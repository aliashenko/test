require 'rspec'
require_relative 'reverse_array.rb'

describe "reverse array" do

  context "transforms the array of integers" do

    let(:input_array_integer) { (1..100).to_a }
    let(:reverse)     { input_array_integer.reverse }


    it { expect(reverse_array(input_array_integer)).to eq(reverse) }

    it { expect(reverse_array(reverse)).to eq(input_array_integer) }
  end

  context "of zero array" do
    let(:input_array_integer) { [] }

    it { expect(reverse_array(input_array_integer)).to eq([]) }
  end

  context "with nil argument" do
    let(:input_array_integer) { nil }

    it { expect(reverse_array(input_array_integer)).to eq("NIL argument") }
  end
end
