function ends_in_3(num)
	return ((num-3) % 10 == 0)
end

print(ends_in_3(10) == false)
print(ends_in_3(3) == true)
print(ends_in_3(33) == true)
print(ends_in_3(36) == false)
print(ends_in_3(383) == true)
