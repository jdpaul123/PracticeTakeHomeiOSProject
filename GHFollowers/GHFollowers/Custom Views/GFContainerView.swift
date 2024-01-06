//
//  GFContainerView.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/6/24.
//

import UIKit

class GFContainerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    // This is used when the view is used in Storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        self.backgroundColor = .systemBackground
        self.layer.cornerRadius = 16
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
