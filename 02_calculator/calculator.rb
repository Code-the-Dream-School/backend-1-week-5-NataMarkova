def add(param1, param2)
    add_result = param1 + param2
end

def subtract(param1, param2)
    subtract_result = param1 - param2
end

def sum(array)
    i = 0
    sum_array = 0
    while i < array.length
        sum_array += array[i]
        i += 1
    end
    sum_array
end

def multiply(array)
    mult_array = 1
    array.each do |i|
        if i!= 0
            mult_array = mult_array * i
        else
            mult_array
        end
    end
    mult_array
end

def power(base, exponent)
    power_result = base ** exponent
end

def factorial(n)
    result = 1
    while n > 0
        result = result * n
        n -= 1
    end
    result
end



