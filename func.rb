def multi()
	def one
		"one"
	end

	return one, "two"
end


a, b = multi

puts(a)
puts(b)


def lookup(id)
	machines = {'medium' => 22, 'high' => 1}
	machines[id]
end

puts lookup('high')
