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

import UIKit

public protocol CellViewModel {
    typealias CellType = UIView & ReusableViewProtocol

    var registration: ReusableViewRegistration { get }

    func applyViewModelTo(cell: CellType)
}
