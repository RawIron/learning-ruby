def isEmpty(a)
  if a
    true
  else
    false
  end
end

RSpec.describe "isEmpty" do
    it "returns true for an empty array" do
      expect(isEmpty([])).to be true
    end
end
