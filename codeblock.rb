module Racing
module Car
	def self.shift_gear(car, gear, codeblock)
		codeblock.call(car, gear)
	end
end
end

codeblock = Proc.new {|car, gear|
	puts "is #{car} #{gear}"
}

Racing::Car.shift_gear("audi", 4, codeblock)


module Racing
module Track
	def self.view()
		puts "nice"
	end
end
end

def run(this)
	this.view
end

run(Racing::Track)
