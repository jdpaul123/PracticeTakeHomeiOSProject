//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/5/24.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // It's nice to have all of the steps logically in order if possible
        // Less logic in the view did load makes it read better; put the logic in helper methods like getFollowers and the configure methods
        configureViewController()
        configureCollectionView()
        getFollowers()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    func configureCollectionView() {
        // have the collection view take up the entire screen
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.resuseID)
    }

    // This function has only local variables and UIViewController properties (ie. there are no green colored text). This is a green flag that we can probably abstract this out of FollowersListVC and into a helper method
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth              = width - ((padding * 2) + (minimumItemSpacing * 2))
        let itemWidth                   = availableWidth / 3

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40) // add 40 points for the text below the image
        return flowLayout
    }

    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print("Followers.count = \(followers.count)")
                print(followers)
            case .failure(let error):
                // Present alert with method defined on UIViewController extension
                self.presentGFAlertMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
}
