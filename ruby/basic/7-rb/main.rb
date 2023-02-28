require_relative 'linked_list'

# inisialisasi Likedlist
linked_list = LinkedList.new
# Insert Linkedlisj (<index>, "<isinya>")
linked_list.insert_at(0, "a")
linked_list.insert_at(1, "b")
linked_list.insert_at(2, "c")
linked_list.insert_at(3, "d")

puts "ReadOf\n"
puts linked_list.read(0)
puts linked_list.read(1)
puts linked_list.read(2)
puts linked_list.read(3)

puts "IndexOf\n"
puts linked_list.index_of("a")
puts linked_list.index_of("b")
puts linked_list.index_of("c")
puts linked_list.index_of("d")

puts "DeleteAt\n"
linked_list.delete_at(0) # delete a from List: a, b, c, d
puts linked_list.read(0) # should return b (List: b, c, d)

puts "DeleteAt\n"
linked_list.delete_at(1) # delete c from List: b, c, d
puts linked_list.read(1) # should return d (List: b, d)



