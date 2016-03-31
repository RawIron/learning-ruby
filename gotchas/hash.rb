machines = {"ip" => "20.2", "group" => "riak", :ip => "40.4"}

RSpec.describe "a hash" do
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

RSpec.describe "an array" do
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


require "json"
nodes = ["riak@node1", "riak@node7", "riak@node5"]

RSpec.describe "an array" do
    # test is too simple to tell for sure
    # for example different platforms or character encodings
    it "sorts strings with numbers numerically correct" do
      expect(nodes.sort).to eq(["riak@node1", "riak@node5", "riak@node7"])
    end

    it "is convertable to a json array" do
      expect(nodes.to_json).to eq('["riak@node1","riak@node7","riak@node5"]')
    end
end


RSpec.describe "a hash" do
    it "overwrites values with equal keys" do
      expect({:name => "bat", :name => "ant"}[:name]).to eq("ant")
    end

    it "indexes a value with a key" do
      nginx = {:name => "user-service"}
      expect(nginx[:name]).to eq("user-service")
    end

    it "is mutable and new key-value pairs can be added" do
      nginx = {}
      nginx[:name] = "user-service"
      expect(nginx[:name]).to eq("user-service")
    end

    it "must be tested for emptiness with a method call" do
      expect({}.empty?).to be true
    end

    it "can be nested" do
      expect({:root => {:between => {:leaf => 4}}}[:root][:between][:leaf]).to eq(4)
    end
end

