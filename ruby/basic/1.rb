def in_included?(item, array)
    found = false

    for i in 0..array.size do
        puts "Hello, #{i + 1} #{array[i]}!"
        if array[i] == item
            found = true
            break
        end
    end 

    found
end 

item = "ope"
array = ["kra", "ope", "wsa", "ope"];
puts in_included?(item, array)