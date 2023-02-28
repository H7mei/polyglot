require_relative 'node'

class DoublyLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)

    unless head
      @head = new_node
      @tail = new_node
    else
      new_node.previous_node = tail
      @tail.next_node = new_node
      @tail = new_node
    end
  end
 
  def remove_head
    removed_node = head
    @head = head.next_node

    return removed_node
  end
end

 