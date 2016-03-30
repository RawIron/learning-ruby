def multi()
	def one
		"one"
	end

	return one, "two"
end


RSpec.describe "multi" do
    it "returns two values" do
      a, b = multi
      expect(a).to eq('one')
      expect(b).to eq('two')
    end
end


def lookup(id)
	machines = {'medium' => 22, 'high' => 1}
	machines[id]
end


RSpec.describe "lookup" do
    it "returns 1 for high" do
      expect(lookup('high')).to eq(1)
    end

    it "returns 22 for medium" do
      expect(lookup('medium')).to eq(22)
    end
end
