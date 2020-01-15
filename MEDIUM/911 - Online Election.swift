class TopVotedCandidate {
    var A = [Vote]()
    init(_ persons: [Int], _ times: [Int]) {
        
        var count = [Int: Int]()
        var leader = -1
        var currentVote = 0
        
        for index in persons.indices {
            var person = persons[index]
            var time = times[index]
            count[person, default: 0] += 1
            
            if count[person]! >= currentVote {
                if person != leader {
                    leader = person
                    A.append(Vote(leader, time))
                }
                if count[person]! > currentVote {
                    currentVote = count[person]!
                }
            }
        }
    }
    func q(_ t: Int) -> Int {
        var low = 1
        var high = A.count
        while low < high {
            var mid = (low + high) / 2
            if A[mid].time <= t { 
                low = mid + 1
            } else { 
                high = mid 
            }
        }
        return A[low - 1].person
    }
}

class Vote {
    var person: Int
    var time: Int
    
    init(_ p: Int, _ t: Int) {
        person = p
        time = t
    }
}