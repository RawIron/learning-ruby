RSpec.describe "a random number generator" do
    it "creates an integer between 0 and an upper bound" do
      upperBound = 15000
      expect(Random.rand(upperBound)).to be_between(0, upperBound).inclusive
    end
end


RSpec.describe "a string" do
    it "allows substitution with regular expressions" do
      someText="hallo
        h"
      someText.gsub!(/\n +/, "" )
      expect(someText).to eq("halloh")
      #expect(someText.inspect).to eq("halloh")
    end
end


RSpec.describe "a float" do
    it "is convertable to int" do
      expect((2.8).to_int).to eq(2)
    end
end
