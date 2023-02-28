require 'rspec'
require_relative 'binary_search_tree'

describe 'BinarySearchTree' do
    describe '#root' do
        it 'should return nil when first initialized' do
            bst = BinarySearchTree.new
            expect(bst.root).to eq(nil)
        end
    end

    describe '#insert' do
        it 'should return 1 after we insert 1' do
            bst = BinarySearchTree.new
            bst.insert(1)
            expect(bst.root.value).to eq(1)
        end

        it 'should add value to left node when adding value smaller than root' do
            bst = BinarySearchTree.new
            bst.insert(2)
            bst.insert(1)
            expect(bst.root.left.value).to eq(1)
        end

        it 'should add value to right node when adding value bigger than root' do
            bst = BinarySearchTree.new
            bst.insert(1)
            bst.insert(2)
            expect(bst.root.right.value).to eq(2)
        end

        it 'should add value to left grandchild node when adding value smaller than ancestor left node' do
            bst = BinarySearchTree.new
            bst.insert(3)
            bst.insert(2)
            bst.insert(1)
            expect(bst.root.left.left.value).to eq(1)
        end

        it 'should add value to right grandchild node when adding value bigger than ancestor right node' do
            bst = BinarySearchTree.new
            bst.insert(1)
            bst.insert(2)
            bst.insert(3)
            expect(bst.root.right.right.value).to eq(3)
        end

        it '' do
            bst = BinarySearchTree.new
            bst.insert(4)
            bst.insert(2)
            bst.insert(6)
            bst.insert(1)
            bst.insert(3)
            bst.insert(5)
            bst.insert(7)
            expect(bst.root.left.left.value).to eq(1)
        end
    end

    describe'#delete' do
        it 'should return nil after we delete 1' do
            bst = BinarySearchTree.new
            expect(bst.delete(1)).to eq(nil)
        end

        context 'when deleting root node' do
            it 'should return root node' do
                bst = BinarySearchTree.new
                bst.insert(1)
                deleted_node = bst.delete(1)
                expect(deleted_node.value).to eq(1)
            end

            it 'should actually delete the root node' do
                bst = BinarySearchTree.new
                bst.insert(1)
                bst.delete(1)
                expect(bst.root).to eq(nil)
            end
        end

        context 'when deleting child node' do
            context 'with no grandchild node' do
                it 'should return left child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(2)
                    bst.insert(1)
                    deleted_node = bst.delete(1)
                    expect(deleted_node.value).to eq(1)
                end
    
                it 'should actually delete left child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(2)
                    bst.insert(1)
                    bst.delete(1)
                    expect(bst.root.left).to eq(nil)
                end
    
                it 'should return right child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(1)
                    bst.insert(2)
                    deleted_node = bst.delete(2)
                    expect(deleted_node.value).to eq(2)
                end
    
                it 'should actually delete right child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(1)
                    bst.insert(2)
                    bst.delete(2)
                    expect(bst.root.right).to eq(nil)
                end
            end

            context 'with one child node' do
                it 'should ensure left grandchild node become the new left child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(3)
                    bst.insert(2)
                    bst.insert(1)
                    deleted_node = bst.delete(2)
                    expect(bst.root.left.value).to eq(1)
                end

                it 'should ensure right grandchild node become the new left child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(3)
                    bst.insert(1)
                    bst.insert(2)
                    deleted_node = bst.delete(1)
                    expect(bst.root.left.value).to eq(2)
                end

                it 'should ensure right grandchild node become the new right child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(1)
                    bst.insert(2)
                    bst.insert(3)
                    deleted_node = bst.delete(2)
                    expect(bst.root.right.value).to eq(3)
                end

                it 'should ensure left grandchild node become the new right child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(1)
                    bst.insert(3)
                    bst.insert(2)
                    deleted_node = bst.delete(3)
                    expect(bst.root.right.value).to eq(2)
                end
            end

            context 'with two child nodes' do
                it 'should ensure left-most node of the right subtree become the new left child node' do
                    bst =  BinarySearchTree.new
                    bst.insert(4)
                    bst.insert(2)
                    bst.insert(5)
                    bst.insert(1)
                    bst.insert(3)
                    deleted_node = bst.delete(2)
                    expect(bst.root.left.value).to eq(3)
                end
            end
        end
    end
end