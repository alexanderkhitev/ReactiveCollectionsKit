//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//  Documentation
//  https://jessesquires.github.io/ReactiveCollectionsKit
//
//  GitHub
//  https://github.com/jessesquires/ReactiveCollectionsKit
//
//  Copyright © 2019-present Jesse Squires
//

import Foundation
import ReactiveCollectionsKit

struct FavoriteBadgeViewModel: SupplementaryViewModel {
    static let kind = "favorite-badge-view"

    let isHidden: Bool

    // MARK: SupplementaryViewModel

    let id: UniqueIdentifier

    var kind: SupplementaryViewKind { Self.kind }

    func configure(view: FavoriteBadgeView) {
        view.isHidden = self.isHidden
    }

    // MARK: Equatable

    static func == (left: Self, right: Self) -> Bool {
        left.isHidden == right.isHidden
    }
}
