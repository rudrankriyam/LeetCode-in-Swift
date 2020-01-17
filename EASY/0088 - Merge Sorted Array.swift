class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if m == 0 { 
            nums1 = nums2
            return
        }
        if n == 0 { return }
        var pointerOne = m - 1
        var pointerTwo = n - 1
        var pointer = m + n - 1
        
        while pointerOne >= 0 && pointerTwo >= 0 {
            if nums1[pointerOne] >= nums2[pointerTwo] {
                nums1[pointer] = nums1[pointerOne]
                pointer -= 1
                pointerOne -= 1
                
            } else { 
                nums1[pointer] = nums2[pointerTwo]
                pointer -= 1
                pointerTwo -= 1
            }
        }
        while pointerTwo >= 0 {
            nums1[pointer] = nums2[pointerTwo]
            pointer -= 1
            pointerTwo -= 1
        }
    }
}