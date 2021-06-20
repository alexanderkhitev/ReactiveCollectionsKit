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

import ReactiveCollectionsKit
import UIKit

enum HeaderViewStyle {
    case large
    case small
}

struct HeaderViewModel: SupplementaryViewModel {
    let title: String
    let style: HeaderViewStyle

    // MARK: SupplementaryViewModel

    var id: UniqueIdentifier { self.title }

    let kind = SupplementaryViewKind.header

    func configure(view: UICollectionViewListCell) {
        var config: UIListContentConfiguration
        switch self.style {
        case .large:
            if #available(iOS 15.0, *) {
                config = .prominentInsetGroupedHeader()
            } else {
                config = .plainHeader()
            }

        case .small:
            config = .groupedHeader()
        }
        config.text = self.title
        view.contentConfiguration = config
    }
}
