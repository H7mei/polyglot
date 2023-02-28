require_relative 'queue'

list = DoublyLinkedList.new

# apped tambahin di belakang
list.append("a")
puts list.head.data # should return a

list.append("b")
puts list.tail.data # should return b

puts list.remove_head.data # should return a
puts list.head.data # should return b

puts "pake Tipe data Queue"
queue = Queue.new
queue.enqueue("a")
puts queue.read # should return a
queue.enqueue("b")
puts queue.read # should return a
queue.enqueue("c")
puts queue.read # should return a

queue.dequeue # remove a from a, b, c
puts queue.read # should return b
queue.dequeue # remove b from b, c
puts queue.read # should return c
