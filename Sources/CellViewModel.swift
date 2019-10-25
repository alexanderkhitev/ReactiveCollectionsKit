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

    var shouldHighlight: Bool { get }

    /// - Note: for table views the width is ignored
    func size<V: UIView & CellContainerViewProtocol>(in containerView: V) -> CGSize

    func applyViewModelTo(cell: CellType)
}

extension CellViewModel {
    public var shouldHighlight: Bool { true }
}
