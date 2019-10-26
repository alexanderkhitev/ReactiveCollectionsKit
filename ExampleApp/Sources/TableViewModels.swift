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

struct PersonTableCellViewModel: CellViewModel {
    let person: Person
    let didSelect: CellActions.DidSelect

    var id: UniqueIdentifier { self.person.name }

    let registration = ReusableViewRegistration(classType: PersonTableCell.self)

    func size<V: UIView & CellContainerViewProtocol>(in containerView: V) -> CGSize {
        CGSize(width: 0, height: 60)
    }

    func applyViewModelTo(cell: Self.CellType) {
        let cell = cell as! PersonTableCell
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = self.person.name
        cell.detailTextLabel?.text = "\(self.person.nationality) \(self.person.birthDateText)"
    }
}

struct PersonTableHeaderViewModel: SupplementaryViewModel {
    let kind = SupplementaryViewKind.header
    let style = SupplementaryViewStyle.title("Comrades")

    func applyViewModelTo(view: Self.SupplementaryViewType) { }
}

struct PersonTableFooterViewModel: SupplementaryViewModel {
    let kind = SupplementaryViewKind.footer
    let style = SupplementaryViewStyle.title("Note: list is incomplete")

    func applyViewModelTo(view: Self.SupplementaryViewType) { }
}
