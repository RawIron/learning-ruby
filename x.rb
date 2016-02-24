
deep = {:root => {:between => {:leaf => 4}}}
puts deep[:root]


dict = {:name => "l", :name => "x"}
puts dict

nginx = {}
nginx[:name] = "yep"
puts nginx


module Nginx
	def self.configure(value)
		p value
	end
	def self.restart
		p "restart"
	end
end

Nginx::configure("connect")
Nginx.restart()
Nginx::restart()

puts Random.rand(15000)

result="hallo
  h"
result.gsub!(/\n +/, "" )
puts(result.inspect)

puts (2.8).to_int


anEmpty = {}
if anEmpty.empty?
	puts "it is empty"
end

