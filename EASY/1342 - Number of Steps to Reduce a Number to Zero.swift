class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var number = num
        var steps = 0

        while number > 0 {
            steps += 1

            if number % 2 == 0 {
                number /= 2
            } else {
                number -= 1
            }
        }

        return steps
    }
}
