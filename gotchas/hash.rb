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


RSpec.describe "an array" do
    it "is not identical to another array when types do not match" do
      expect([1,3] === ["1","3"]).to be false
    end
end


instances = {"goof" => {:ipaddress => "128.0.0.0"}}

RSpec.describe "instances nested hash" do
    it "extracts key and value as a pair" do
      instances.each do |name, instance|
        expect(name).to eq("goof")
        expect(instance[:ipaddress]).to eq("128.0.0.0")
      end
    end
end
