require_relative 'node'

class BinarySearchTree
    attr_reader :root

    def initialize
        @root = nil
    end

    def insert(value, node=@root)
        if !@root
            @root = Node.new(value)
        elsif value < node.value
            if node.left.nil?
                node.left = Node.new(value)
            else
                insert(value, node.left)
            end
        elsif value > node.value
            if node.right.nil?
                node.right = Node.new(value)
            else
                insert(value, node.right)
            end
        end
    end

    def delete(value, node=@root, parent_node=nil, mark=nil)
        return nil if node == nil

        if node.value == value
            deleted_node = node

            if node == @root
                @root = nil
            else
                # NOTE: resucturing spesific rubby
                if node.left.nil? || node.right.nil?
                    parent_node.send("#{mark}=", node.left || node.right) 
                else
                    parent_node.send("#{mark}").value = leftmost_node(node.right).value
                end
                # parent_node.send("left=", node.left || node.right)
                # parent_node.left = node.left || node.right  ===> boolean expresion

                # konsep lazy evaluation == 

                # if mark == 'left'
                #     # parent_node.left = node.left
                #     if node.left != nil
                #         parent_node.left = node.left
                #     else
                #         parent_node.left = node.right
                #     end
                # elsif mark == 'right'
                #     # parent_node.right = node.right
                #     if node.right != nil
                #         parent_node.right = node.right
                #     else
                #         parent_node.right = node.left
                #     end
                # end
                # meta programing
            end
        elsif value < node.value
            deleted_node = delete(value, node.left, node, 'left')
        elsif value > node.value
            deleted_node = delete(value, node.right, node, 'right')
        end

        deleted_node
    end

    def leftmost_node(node)
        return node if node.left.nil?
        return leftmost_node(node.left)
    end
end
