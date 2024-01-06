//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/6/24.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = UIImage(resource: .avatarPlaceholder)

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        layer.cornerRadius = 10
        // The image needs to clip to bounds to take on the corner radius
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
