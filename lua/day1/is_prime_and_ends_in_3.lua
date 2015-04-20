function ends_in_3(num)
	return ((num-3) % 10 == 0)
end

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

function is_prime_and_ends_in_3(n)
	if (is_prime(n)) then
		print(n .. ' is prime')
		return ends_in_3(n)
	end
	return false
end

print(is_prime_and_ends_in_3(383) == true)
print(is_prime_and_ends_in_3(373) == true)
print(is_prime_and_ends_in_3(1487) == true)
print(is_prime_and_ends_in_3(2503) == true)


