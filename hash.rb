
machines = {"ip" => "20.2", "group" => "riak", :ip => "40.4"}

key = "ip"

puts machines["ip"]
puts machines[:ip]
puts machines[key.to_sym]


animals = ["bear", "snake", "whale"]

msg = "#{animals}"
puts(msg)

animals.each do |animal|
	puts(animal)
end

if [1,3] === ["1","3"]
   puts "yes"
end


instances = {"goof" => {:ipaddress => "128.0.0.0"}}

instances.each do |name, instance|
	puts(name)
	puts(instance[:ipaddress])
end
