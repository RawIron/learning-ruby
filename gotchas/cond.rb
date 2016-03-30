def booleanOf(a)
  if a
    true
  else
    false
  end
end

RSpec.describe "the boolean value" do
    it "is true for an empty array" do
      expect(booleanOf []).to be true
    end

    it "is false for nil" do
      expect(booleanOf nil).to be false
    end

    it "is true for empty string" do
      expect(booleanOf "").to be true
    end
end


def caseWithNil(someValue)
  case someValue
  when nil
    "matched nil"
  else
    "matched else"
  end
end

RSpec.describe "a case statement" do
    it "does not match a nil with any string" do
      expect(caseWithNil "oh").to eq("matched else")
    end

    it "does match a nil with a nil" do
      expect(caseWithNil nil).to eq("matched nil")
    end
end
