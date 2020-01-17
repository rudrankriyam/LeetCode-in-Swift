class Solution {
    func defangIPaddr(_ address: String) -> String {
        let address = address
        var defangedAddress = ""

        for character in address {
            if character == "." {
                defangedAddress += "[.]"
            } else {
                defangedAddress += String(character)
            }
        }
        return defangedAddress
    }
}