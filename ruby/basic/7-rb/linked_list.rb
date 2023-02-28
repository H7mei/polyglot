require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def read(index)
    current_node = head
    current_index = 0

    while current_index < index
      current_node = current_node.next_node
      current_index += 1
    end

    unless current_node
      nil
    else
      current_node.data
    end
  end

  def insert_at(index, value)
    new_node = Node.new(value)

    if index == 0
      new_node.next_node = head
      self.head = new_node
      return
    end

    current_node = head
    current_index = 0

    while current_index < (index - 1)
      current_node = current_node.next_node
      current_index += 1
    end

    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def index_of(value)
    current_node = head
    current_index = 0

    begin
      if current_node.data == value
        return current_index
      end

      current_node = current_node.next_node
      current_index += 1
    end while current_node

    return nil
  end

  def delete_at(index)
    if index == 0
      self.head = head.next_node
      return
    end

    current_node = head
    current_index = 0

    while current_index < (index - 1)
      current_node = current_node.next_node
      current_index += 1
    end

    node_after_deleted_node = current_node.next_node.next_node
    current_node.next_node = node_after_deleted_node
  end
end