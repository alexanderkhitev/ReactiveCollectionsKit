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

final class ListViewController: UICollectionViewController {
    var driver: CollectionViewDriver!

    var model = Model() {
        didSet {
            self.driver.viewModel = ViewModel.createList(from: self.model)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewCompositionalLayout { _, layoutEnvironment in
            var configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
            configuration.headerMode = .supplementary
            configuration.footerMode = .supplementary

            configuration.leadingSwipeActionsConfigurationProvider = { [unowned self] indexPath in
                let favoriteAction = UIContextualAction(style: .normal, title: "Favorite") { _, _, completion in
                    self.toggleFavoriteAt(indexPath: indexPath)
                    completion(true)
                }
                favoriteAction.image = UIImage(systemName: "star.fill")
                favoriteAction.backgroundColor = .systemYellow

                return UISwipeActionsConfiguration(actions: [favoriteAction])
            }

            configuration.trailingSwipeActionsConfigurationProvider = { [unowned self] indexPath in
                let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, completion in
                    self.deleteAt(indexPath: indexPath)
                    completion(true)
                }
                deleteAction.image = UIImage(systemName: "trash")
                deleteAction.backgroundColor = .systemRed

                return UISwipeActionsConfiguration(actions: [deleteAction])
            }

            let section = NSCollectionLayoutSection.list(using: configuration,
                                                         layoutEnvironment: layoutEnvironment)
            return section
        }

        let viewModel = ViewModel.createList(from: self.model)

        self.driver = CollectionViewDriver(
            view: self.collectionView,
            layout: layout,
            viewModel: viewModel,
            controller: self,
            animateUpdates: true) { [unowned self] in
            print("list did update!")
            print(self.driver.viewModel)
        }

        self.addShuffle(action: #selector(shuffle))
        self.addReload(action: #selector(reload))
    }

    @objc
    func shuffle() {
        self.model.shuffle()
    }

    // TODO: reset and reload
    @objc
    func reload() {
        self.driver.reloadData()
    }

    func deleteAt(indexPath: IndexPath) {
        self.model.deleteModelAt(indexPath: indexPath)
    }

    func toggleFavoriteAt(indexPath: IndexPath) {
        self.model.toggleFavoriteAt(indexPath: indexPath)
    }
}
