def sort(input_array)
    insertion_sort(input_array)
end

def bubble_sort(input_array)
unsorted_until_index = input_array.size - 1

while unsorted_until_index > 0 do
    i = 0

    while i < unsorted_until_index do
    if input_array[i] > input_array[i + 1]
        input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i] 
    end

    i += 1
    end

    unsorted_until_index -= 1
end
return input_array
end

def selection_sort(input_array)
starting_index = 0
array_size = input_array.size - 1

while starting_index < array_size
    lowest_value = input_array[starting_index]
    lowest_value_index = starting_index
    second_index = starting_index + 1

    for i in second_index..array_size do
    if input_array[i] < lowest_value
        lowest_value = input_array[i]
        lowest_value_index = i
    end
    end

    input_array[starting_index], input_array[lowest_value_index] = input_array[lowest_value_index], input_array[starting_index]
    starting_index += 1
end

return input_array
end

def insertion_sort(input_array)
size = input_array.size - 1

for i in 1..size do
    temp_value = input_array[i]
    position = i - 1

    while position >= 0
    if input_array[position] > temp_value
        input_array[position + 1] = input_array[position]
        position -= 1
    else
        break
    end
    end

    input_array[position + 1] = temp_value
end

return input_array
end