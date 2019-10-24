//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//
//  Documentation
//  https://jessesquires.github.io/DiffableCollectionsKit
//
//
//  GitHub
//  https://github.com/jessesquires/DiffableCollectionsKit
//
//
//  License
//  Copyright © 2019-present Jesse Squires
//  Released under an MIT license: https://opensource.org/licenses/MIT
//

import Foundation

struct Person {
    let name: String

    let birthdate: Date

    let nationality: String
}

extension Date {
    init(year: Int, month: Int, day: Int) {
        let components = DateComponents(calendar: .current,
                                        timeZone: .current,
                                        year: year,
                                        month: month,
                                        day: day)
        self = components.date!
    }
}

extension Person {
    static func makePeople() -> [Person] {
        return [
            Person(name: "Noam Chomsky", birthdate: Date(year: 1928, month: 12, day: 7), nationality: "🇺🇸"),
            Person(name: "Emma Goldman", birthdate: Date(year: 1869, month: 6, day: 27), nationality: "🇷🇺"),
            Person(name: "Mikhail Bakunin", birthdate: Date(year: 1814, month: 5, day: 30), nationality: "🇷🇺"),
            Person(name: "Ursula K. Le Guin", birthdate: Date(year: 1929, month: 10, day: 21), nationality: "🇺🇸"),
            Person(name: "Peter Kropotkin", birthdate: Date(year: 1842, month: 12, day: 9), nationality: "🇷🇺"),
            Person(name: "Marie Louise Berneri", birthdate: Date(year: 1918, month: 3, day: 1), nationality: "🇮🇹"),
        ]
    }
}
