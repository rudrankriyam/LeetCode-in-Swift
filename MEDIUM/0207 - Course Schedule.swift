class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph = [Int: Set<Int>]()
        for prerequisite in prerequisites {
            graph[prerequisite[0], default: []].insert(prerequisite[1])
        }
        var visited = [Int: Int]()
        for course in graph.keys {
            if !courseTaken(graph, course, &visited) { return false }
        }
        return true
    }
    
    private func courseTaken(_ graph: [Int: Set<Int>], _ currentCourse: Int, _ visited: inout [Int: Int]) -> Bool {
        if visited[currentCourse] == 1 { return true }
        else if visited[currentCourse] == -1 { return false }
        visited[currentCourse] = -1
        for nextCourse in graph[currentCourse] ?? [] {
            if !courseTaken(graph, nextCourse, &visited) { return false }
        }
        visited[currentCourse] = 1
        return true 
    }
}