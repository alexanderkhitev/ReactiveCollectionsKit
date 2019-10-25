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

import UIKit

public final class ContainerViewDriver<View: UIView & CellContainerViewProtocol> {

    public let view: View

    public let model: ContainerViewModel

    private let _dataSourceDelegate: ContainerViewDataSourceDelegate

    public init(view: View, model: ContainerViewModel) {
        self.view = view
        self.model = model
        self._dataSourceDelegate = ContainerViewDataSourceDelegate(model: model)

        self.view.register(viewModel: model)
        self.view.dataSource = self._dataSourceDelegate as? View.DataSource
        self.view.delegate = self._dataSourceDelegate as? View.Delegate
    }

    public func reloadData() {
        self.view.reloadData()
    }
}
