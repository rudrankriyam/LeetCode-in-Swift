class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var outputArray = [String]()
        generateParenthesis("", 0, 0, &outputArray, n)
        return outputArray
    }
        
    func generateParenthesis(_ currentString: String, _ numberOfOpeningBrace: Int, _ numberOfClosingBrace: Int, _ array: inout [String], _ totalPairs: Int) {
        if currentString.count == totalPairs * 2 { array.append(currentString) }
        
        if numberOfOpeningBrace < totalPairs {
            generateParenthesis(currentString + "(", numberOfOpeningBrace + 1, numberOfClosingBrace, &array, totalPairs)
        }
        
        if numberOfClosingBrace < numberOfOpeningBrace {
            generateParenthesis(currentString + ")", numberOfOpeningBrace, numberOfClosingBrace + 1, &array, totalPairs)
        }
    }
}