

a = [{:name => "go", :cost => 3}, {:name => "fast", :cost => 4}]

a.take(1).each do |name, cost|
	puts name
end


something = "oh"
case something
when nil
else
	puts "only else"
end


module Fathom
	module Util
	def Util.log
		puts "got logged"
	end
	end
end

Fathom::Util.log


anArrayWithNil = [nil]

anArrayWithNil.each do |elem|
	puts elem
end


if ["hello", "gold"].include?("gold")
	puts("found gold")
end
