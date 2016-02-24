up_to = 60
pos = 5
y = 10
while (pos <= up_to) do
	y = y * 1.5
	puts("#{pos}  #{y.to_i.to_s}")
	pos += 5
end
