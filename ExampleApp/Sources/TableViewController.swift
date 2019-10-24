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
import DiffableCollectionsKit

final class TableViewController: UITableViewController {

    let model = ViewModel.makeTableViewModel()

    lazy var driver = ContainerViewDriver(view: self.tableView, model: self.model)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.driver.reloadData()
    }
}