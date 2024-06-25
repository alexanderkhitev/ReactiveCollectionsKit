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
@testable import ReactiveCollectionsKit
import XCTest

struct FakeSupplementaryViewModel: SupplementaryViewModel {
    static let kind = "FakeKind"

    let title = String.random

    nonisolated var id: UniqueIdentifier { self.title }

    var registration: ViewRegistration {
        ViewRegistration(
            reuseIdentifier: self.reuseIdentifier,
            supplementaryViewClass: FakeSupplementaryView.self,
            kind: Self.kind
        )
    }

    var expectationConfigureView: XCTestExpectation?
    func configure(view: FakeSupplementaryView) {
        self.expectationConfigureView?.fulfillAndLog()
    }

    nonisolated static func == (left: Self, right: Self) -> Bool {
        left.title == right.title
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
    }
}

final class FakeSupplementaryView: UICollectionViewCell { }

struct FakeHeaderViewModel: SupplementaryHeaderViewModel {
    let title = String.random

    nonisolated var id: UniqueIdentifier { self.title }

    var expectationConfigureView: XCTestExpectation?
    func configure(view: FakeCollectionHeaderView) {
        self.expectationConfigureView?.fulfillAndLog()
    }

    nonisolated static func == (left: Self, right: Self) -> Bool {
        left.title == right.title
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
    }
}

final class FakeCollectionHeaderView: UICollectionReusableView { }

struct FakeFooterViewModel: SupplementaryFooterViewModel {
    let title = String.random

    nonisolated var id: UniqueIdentifier { self.title }

    var expectationConfigureView: XCTestExpectation?
    func configure(view: FakeCollectionFooterView) {
        self.expectationConfigureView?.fulfillAndLog()
    }

    nonisolated static func == (left: Self, right: Self) -> Bool {
        left.title == right.title
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
    }
}

final class FakeCollectionFooterView: UICollectionReusableView { }
