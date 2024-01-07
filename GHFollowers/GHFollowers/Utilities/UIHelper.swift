//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/6/24.
//

import UIKit

class UIHelper {
    // This function was originally in FollowersListVC, but we must ask, "Does the VC need to know about this funciton?"
    // The answer is, "NO", so we abstract it into this UIHelper class
    // Why doies the FollowersListVC not need to know this: Because this method has only local variables and UIViewController
    // properties (ie. there are no green colored text). This is a green flag that we can probably abstract this out of FollowersListVC and into a helper method
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        // This is providing the width of each column based on splitting the layout of the cells into 3 columns
        // accounting for padding on either side of the screen (padding) and between each cell (minimumItemSpacing)
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = availableWidth / 3

        let flowLayout                  = UICollectionViewFlowLayout()
        flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize             = CGSize(width: itemWidth, height: itemWidth + 40) // add 40 points for the text below the image
        return flowLayout
    }
}
