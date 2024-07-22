class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count - 1 {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var seen: [Int] = [nums[0]]
        for i in 1..<nums.count {
            let remaining = target - nums[i]
            if let secondIndex = seen.firstIndex(of: remaining) {
                return [secondIndex, i]
            }
            seen.append(nums[i])
        }
        return []
    }
}
