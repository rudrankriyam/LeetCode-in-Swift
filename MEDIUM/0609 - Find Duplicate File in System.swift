class Solution {
    func findDuplicate(_ paths: [String]) -> [[String]] {
        var duplicateMapping = [String: [String]]()
        
        for path in paths {
            var components = path.components(separatedBy: " ")
            var basePath = components[0]
            
            for index in 1..<components.count {
                let fileInformation = components[index]
                var fileName = ""
                var fileCount = ""
                var isReadingFileContent = false 
                
                for character in fileInformation {
                    if character == "(" || character == ")" {
                        isReadingFileContent = true
                        continue
                    }
                    
                    if isReadingFileContent { 
                        fileCount += String(character) 
                    } else { 
                        fileName += String(character)
                    }
                }
                
                if let value = duplicateMapping[fileCount] {
                    duplicateMapping[fileCount] = value + ["\(basePath)/\(fileName)"]
                } else {
                    duplicateMapping[fileCount] = ["\(basePath)/\(fileName)"]
                }
            }
        }
        return Array(duplicateMapping.values.filter { $0.count > 1 })
    }
}