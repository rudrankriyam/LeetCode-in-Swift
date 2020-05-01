/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var firstBadVersion = 1
        var lastVersion = n

        while firstBadVersion < lastVersion {
            var middleVersion =  firstBadVersion + (lastVersion - firstBadVersion) / 2
            if isBadVersion(middleVersion) {
                lastVersion = middleVersion
            } else {
                firstBadVersion = middleVersion + 1
            }
        }
        return firstBadVersion
    }
}
