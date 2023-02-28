class Node
    attr_accessor :data, :next_node, :previous_node
  
    def initialize(data)
      @data = data
      @next_node = nil
      @previous_node = nil
    end
  end
  