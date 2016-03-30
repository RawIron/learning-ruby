machines = {"ip" => "20.2", "group" => "riak", :ip => "40.4"}

RSpec.describe "machines hash" do
    it "finds a key string" do
      expect(machines["ip"]).to eq("20.2")
    end

    it "finds a key symbol" do
      expect(machines[:ip]).to eq("40.4")
    end

    it "finds a key symbol converted from a key string" do
      expect(machines["ip".to_sym]).to eq("40.4")
    end
end


animals = ["bear", "snake", "whale"]

RSpec.describe "animals array" do
    it "is equal to an array with same values in same order" do
      expect(animals).to eq(["bear", "snake", "whale"])
    end

    it "is not equal to an array with same values but different order" do
      expect(animals).not_to eq(["snake", "bear", "whale"])
    end

    it "iterates over its values in order" do
      pos = 0
      order = Hash.new(3)
      animals.each do |animal|
        order[pos] = animal
        pos += 1
      end
      expect(order[0]).to eq("bear")
      expect(order[1]).to eq("snake")
      expect(order[2]).to eq("whale")
    end
end



instances = {"goof" => {:ipaddress => "128.0.0.0"}}

RSpec.describe "a nested hash" do
    it "is iterable over key and value pairs" do
      instances.each do |name, instance|
        expect(name).to eq("goof")
        expect(instance[:ipaddress]).to eq("128.0.0.0")
      end
    end
end


a = [{:name => "go", :cost => 3}, {:name => "fast", :cost => 4}]

RSpec.describe "an array of hashes" do
    it "is iterable over hashes" do
      a.take(1).each do |h|
        expect(h[:cost]).to eq(3)
      end
    end
end


RSpec.describe "an array" do
    it "is iterable once for a single nil element" do
      [nil].each do |elem|
        expect(elem).to be nil
      end
    end

    it "is not identical to another array when types do not match" do
      expect([1,3] === ["1","3"]).to be false
    end

    it "is searchable and evaluates to true for equal strings" do
      expect(["hello", "gold"].include?("gold")).to be true
    end
end
