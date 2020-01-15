/**
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * class NestedInteger {
 *     // Return true if this NestedInteger holds a single integer, rather than a nested list.
 *     public func isInteger() -> Bool
 *
 *     // Return the single integer that this NestedInteger holds, if it holds a single integer
 *     // The result is undefined if this NestedInteger holds a nested list
 *     public func getInteger() -> Int
 *
 *     // Set this NestedInteger to hold a single integer.
 *     public func setInteger(value: Int)
 *
 *     // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 *     public func add(elem: NestedInteger)
 *
 *     // Return the nested list that this NestedInteger holds, if it holds a nested list
 *     // The result is undefined if this NestedInteger holds a single integer
 *     public func getList() -> [NestedInteger]
 * }
 */
class NestedIterator {
    
    var values = [Int]()
    var index = 0

    init(_ nestedList: [NestedInteger]) {
        for element in nestedList {
            flatten(element)
        }
    }
    
    func flatten(_ nestedList: NestedInteger) {
        if nestedList.isInteger() {
            let value = nestedList.getInteger()
            values.append(value)
        } else {
            for element in nestedList.getList() {
                flatten(element)
            }
        }
    }
    
    func next() -> Int {
        if hasNext() {
            let next = values[index]
            index += 1
            return next
        }
        return 0
    }
    
    func hasNext() -> Bool {
        return index < values.count
    }
}