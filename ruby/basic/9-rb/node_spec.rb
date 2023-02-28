require 'rspec'
require_relative 'node'

describe 'NodeSpec' do
    describe '#value' do
        it 'should return value 1 if we initiate with 1' do
            node = Node.new(1)
            expect(node.value).to eq(1)
        end        
    end

    describe '#left' do
        it 'should return nil when first initialized' do
            node = Node.new(1)
            expect(node.left).to eq(nil)
        end
    end

    describe '#right' do
        it 'should return nil when first initialized' do
            node = Node.new(1)
            expect(node.right).to eq(nil)
        end
    end
end