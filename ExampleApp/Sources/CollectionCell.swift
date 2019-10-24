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

final class PersonCollectionCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var subtitleLabel: UILabel!

    @IBOutlet weak var flagLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}