require_relative 'doubly_linked_list'

class Queue
  def initialize
    @list = DoublyLinkedList.new
  end

  def enqueue(element)
    @list.append(element)
  end

  def dequeue
    removed_node = @list.remove_head
    return removed_node.data
  end

  def read
    return nil unless @list.head
    return @list.head.data
  end
endi