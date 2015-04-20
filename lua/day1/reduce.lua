function add(previous, next)
	return previous + next
end

function reduce(max, init, f)
	local previous = 0
	for next = init+1, max, 1 do
		-- print(previous .. ' ' .. next)
		previous = f(previous, next)
	end
	return previous
end

print('add ' .. reduce(5, 0, add))

function multiply(previous, next) 
	if previous == 0 then
		return 1
	end
	return previous * next 
end

function factorial(n)
	return reduce(n, 0, multiply)
end

print('factorial 5 = ' .. factorial(5))
print('factorial 10 = ' .. factorial(10))

-- basic code from stack overflow wanted to see tail recursion not blow up the stack
function factorial_recursive(n, f)
	local value = 0
	if n < 1 then
		value = 1
	else
		value = n * factorial_recursive(n-1, f)
	end
	if not (f == nil) then
		f(value)
	end
	return value
end

function pretty_print(init) 
	local i = init
	return function(value) 
		print(i .. "! = " .. value)
		i = i + 1
	end
end


print('factorial 5 = ' .. factorial_recursive(5))
print('factorial 10 = ' .. factorial_recursive(10))
print('factorial 5 = ' .. factorial_recursive(5, pretty_print(1)))

