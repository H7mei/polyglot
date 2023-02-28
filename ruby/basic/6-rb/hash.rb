# NOTE: Two sum Menggunakan Hash o(N)
def two_sum(nums, target)
    hash_nums = {}

    # for i in 0...nums.size do
    # end
    
    for i in 0...nums.size do
        hash_nums[nums[i]] = i
        second_element = target - nums[i]
        return [i, hash_nums[second_element]].sort unless hash_nums[second_element] == nil || hash_nums[second_element] == i
    end
end



# NOTE: Two sum Mengunakan Array biasa o(N^2)
# def two_sum(nums, target)
#     first_index = 0
#     max_index = nums.size - 1
    
#     while first_index < max_index do
#         second_index = first_index + 1

#         while second_index <= max_index do
#             return [first_index, second_index] if nums[first_index] + nums[second_index] == target
    
#             second_index += 1
#         end
# # O^2
#         first_index += 1
#     end
# endeE

