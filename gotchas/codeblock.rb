# nested modules
# anonymous functions
# lexical scope
# a Ruby block is not an object. The Proc class turns a block into an object.

module Racing
module Car
	def self.shift_gear(car, gear, codeblock)
		codeblock.call(car, gear)
	end
end
end

codeblock = Proc.new {|car, gear|
  [car, gear+1]
}

RSpec.describe Racing::Car do
  describe "#shift_gear" do
    it "returns gear" do
      car, gear = Racing::Car.shift_gear("audi", 4, codeblock)
      expect(car).to eq("audi")
      expect(gear).to eq(5)
    end
  end
end


# nested modules
# pass module as parameter to function

module Racing
module Track
	def self.view()
		return "Hockenheim"
	end
end
end

def run(this)
	this.view
end


RSpec.describe Racing::Track do
  describe "#view" do
    it "returns description of track" do
      desc = run(Racing::Track)
      expect(desc).to eq("Hockenheim")
    end
  end
end


## nested modules
## reference function inside it

module Racing
	module Util
	def Util.log
		"got logged"
	end
	end
end

RSpec.describe Racing::Util do
  describe "#log" do
    it "returns confirmation" do
      expect(Racing::Util.log).to eq("got logged")
    end
  end
end


module Nginx
	def self.configure(value)
		value
	end
	def self.restart
		"restarted"
	end
end

RSpec.describe Nginx do
  describe "#configure" do
    it "is accessed by ::" do
      expect(Nginx::configure("connect")).to eq("connect")
    end
  end

  describe "#restart" do
    it "is accessed by ." do
      expect(Nginx.restart).to eq("restarted")
    end
  end
end
