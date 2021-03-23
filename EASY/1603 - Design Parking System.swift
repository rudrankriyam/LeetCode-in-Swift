enum CarType: Int {
    case big = 1
    case medium
    case small
}

class ParkingSystem {
    private var big: Int
    private var medium: Int
    private var small: Int

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }

    func addCar(_ carType: Int) -> Bool {
        guard let type = CarType(rawValue: carType) else { return false }

        switch type {
        case .big:
            return checkAvailableSpace(for: &big)
        case .medium:
            return checkAvailableSpace(for: &medium)
        case .small:
            return checkAvailableSpace(for: &small)
        }
    }

    private func checkAvailableSpace(for slot: inout Int) -> Bool {
        if slot < 1 {
            return false
        } else {
            slot -= 1
            return true
        }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */
