public class TrieNode {
    var children = [Int: TrieNode]()
    var word: String?
}

extension Character {
    func intVal() -> Int {
        return Int(self.asciiValue! - Character("a").asciiValue!)
    }
}

class Trie {
    public private(set) var root: TrieNode
    
    init() { root = TrieNode() }
    
    func insert(_ word: String) {
        var current = self.root
        for character in word {
            if current.children[character.intVal()] == nil {
                current.children[character.intVal()] = TrieNode()
            }
            current = current.children[character.intVal()]!
        }
        current.word = word
    }
    
    func search(_ word: String) -> Bool {
        var current = self.root
        for character in word {
            if let next = current.children[character.intVal()] {
                current = next
            } else { return false }
        }
        return current.word != nil
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var current = self.root
        for character in prefix {
            if let next = current.children[character.intVal()] {
                current = next
            } else { return false }
        }
        return true
    }
}