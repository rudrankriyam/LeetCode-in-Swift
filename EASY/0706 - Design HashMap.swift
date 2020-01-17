class MyHashMap {
    var hashMap: [Int: Int]
    
    init() {
        self.hashMap = [Int: Int]()
    }

    func put(_ key: Int, _ value: Int) {
        hashMap[key] = value
    }

    func get(_ key: Int) -> Int {
        return hashMap[key] ?? -1
    }
    
    func remove(_ key: Int) {
        hashMap.removeValue(forKey: key)
    }
}