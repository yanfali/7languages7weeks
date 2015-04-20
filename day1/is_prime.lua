function is_prime(n)
	if not(n == 2) and n % 2 == 0 then
		return false
	end
	-- further optimization only test up to sqrt of n rounded up
	-- @see http://www.wikihow.com/Check-if-a-Number-Is-Prime
	for i = 3, n-1 do
		if n % i == 0 then
			return false
		end
	end
	return true
end

print(is_prime(2) == true)
print(is_prime(10) == false)
print(is_prime(3) == true)
print(is_prime(5) == true)
print(is_prime(7) == true)
print(is_prime(9) == false)
print(is_prime(19) == true)
print(is_prime(199) == true)
print(is_prime(373) == true)
print(is_prime(375) == false)
