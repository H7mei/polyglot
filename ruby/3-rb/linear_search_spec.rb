require 'rspec'
require_relative 'linear_search'

RSpec.describe 'linear_search' do
  it "should return false when given empty array and search value 0" do
    input_array = []
    search_value = 0

    expect(linear_search(input_array, search_value)).to eq(false)
  end

  it "should return true when given array [0] and search value 0" do
    input_array = [0]
    search_value = 0

    expect(linear_search(input_array, search_value)).to eq(true)
  end

  it "should return true when given array [0, 1] and search value 1" do
    input_array = [0, 1]
    search_value = 1

    expect(linear_search(input_array, search_value)).to eq(true)
  end

  it "should return true when given array [0, 1, 3, 4, 5] and search value 5" do
    input_array = [0, 1, 2, 3, 4, 5]
    search_value = 5

    expect(linear_search(input_array, search_value)).to eq(true)
  end

  it "should return true when given array and search value" do
    input_array = (1..1000).to_a
    search_value = 999

    expect(binary_search(input_array, search_value)).to eq(true)
  end
end