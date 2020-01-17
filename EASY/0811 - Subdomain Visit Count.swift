class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
    var domainDictionary = [String: Int]()
    var result = [String]()
    
    for cpdomain in cpdomains {
        let domainPair = cpdomain.components(separatedBy: " ")
        let count = Int(domainPair[0])!
        var domain = String(domainPair[1])
        
        domainDictionary[domain, default: 0] += count
        while let index = domain.firstIndex(of: ".") { 
            domain.removeSubrange(domain.startIndex...index)
            domainDictionary[domain, default: 0] += count
        }
    }
    for (domain, count) in domainDictionary {
        result.append("\(count) \(domain)")
    }
    return result
    }
}