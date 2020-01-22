class Solution {
    func removeDuplicates(_ S: String) -> String {
        var uniqueString = ""
		for character in S {
			if !uniqueString.isEmpty && character == uniqueString.last {
				uniqueString.removeLast()
			} else {
                uniqueString.append(character)
            }
		}
		return uniqueString
    }
}