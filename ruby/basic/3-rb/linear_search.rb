def linear_search(input_array, search_value)
    counter = 0

input_array.each do |elem|
    counter += 1
    
    if elem == search_value
    $stderr.puts "counter: #{counter}"
    return true
    end
end
    
    return false
end
  
def binary_search(input_array, search_value)
    counter = 0
    lower_bound = 0
    upper_bound = input_array.size - 1

while lower_bound <= upper_bound
    counter += 1
    midpoint = (lower_bound + upper_bound) / 2
    
    if input_array[midpoint] == search_value
        $stderr.puts "counter: #{counter}" 
        return true
    elsif input_array[midpoint] < search_value
        lower_bound = midpoint + 1
    elsif input_array[midpoint] > search_value
        upper_bound = midpoint - 1
    end
end

return false
end