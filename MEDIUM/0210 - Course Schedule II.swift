class Solution {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var preCourses = [Int: [Int]]()
        var isVisited = [Int: Bool]()
        var order = [Int]()
        
        for prerequisite in prerequisites {
            preCourses[prerequisite[0], default: []].append(prerequisite[1])
        }
        for course in 0..<numCourses {
            guard exploreCourses(course, preCourses, &order, &isVisited) else { return [] }
        }
        return order
    }
    
    private func exploreCourses(_ course: Int, _ preCourses: [Int:[Int]], _ order: inout [Int], _ isVisited: inout [Int: Bool]) -> Bool {
        if let fullyVisited = isVisited[course] { return fullyVisited }
        
        isVisited[course] = false
        for preCourse in preCourses[course] ?? [] {
            guard exploreCourses(preCourse, preCourses, &order, &isVisited) else { return false }
        }
        isVisited[course] = true
        order.append(course)
        return true
    }
}