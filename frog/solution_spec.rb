require 'rspec'
require_relative 'solution.rb'

describe "solution" do

  let(:x) { 5 }

  context "when frog reaches shore" do
    it "returns 5" do
      a = [1, 4, 3, 5, 1, 2, 3, 4, 1]
      expect(solution(x, a)).to eq(5)
    end

    it "returns 6" do
      a = [1, 3, 1, 4, 2, 3, 5, 4]
      expect(solution(x, a)).to eq(6)
    end

    it "returns 2" do
      a = [1, 3, 2, 2, 3]
      x = 3
      expect(solution(x, a)).to eq(2)
    end
  end

  context "when frog doesn't reach shore" do
    it "returns -1" do
      a = [1, 2, 1, 4, 2, 4, 5, 4]
      expect(solution(x, a)).to eq(-1)
    end

    context "when a is a string" do
      it "returns -1" do
        a = [1, 3, 'a', 4, 2, 3, 5, 4]
        expect(solution(x, a)).to eq(-1)
      end
    end

    context "when x is a string" do
      it "returns -1" do
        a = [1, 3, 1, 4, 2, 3, 5, 4]
        x = 'a'
        expect(solution(x, a)).to eq(-1)
      end
    end

    context "when params are out of range" do
      it "returns -1" do
        a = (1..100001).to_a
        x = 100001
        expect(solution(x, a)).to eq(-1)
      end
    end

    context "when a is out of [1..x]" do
      it "returns -1" do
        a = (1..100).to_a
        x = a.max + 1
        expect(solution(x, a)).to eq(-1)
      end
    end
  end

end
