require 'rspec'
require_relative 'queue'

describe 'Queue' do
    it 'queue return nill when reading an empty queue' do
        queue = Queue.new
        expect(queue.read()).to eq(nil)
    end

    it 'should return 5 when reading a queue with data 5' do
        queue = Queue.new
        queue.push(5)
        queue.push(3)
        expect(queue.read()).to eq(5)
    end
end