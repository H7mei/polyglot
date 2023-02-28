require 'rspec'
require_relative 'hash'

describe '#two_sum' do
    it 'should return [0, 1] when given ([1, 2], 3)' do
        nums = [1, 2]
        target = 3
        expect(two_sum(nums, target)).to eq([0, 1])
    end

    it 'should return [0, 2] when given ([1, 2, 3], 4)' do
        nums = [1, 2, 3]
        target = 4
        expect(two_sum(nums, target)).to eq([0, 2])
    end

    it 'should return [1, 2] when given ([1, 2, 3], 5)' do
        nums = [1, 2, 3]
        target = 5
        expect(two_sum(nums, target)).to eq([1, 2])
    end
end