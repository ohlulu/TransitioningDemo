//
//  CellImage.swift
//  AnimationDemo
//
//  Created by ohlulu on 2018/12/23.
//  Copyright © 2018 ohlulu. All rights reserved.
//

import UIKit

class CellImage: UITableViewCell {

    fileprivate let fullImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    fileprivate func setupUI() {
        contentView.addSubview(fullImage)
        fullImage.translatesAutoresizingMaskIntoConstraints = false
        fullImage.heightAnchor.constraint(equalToConstant: 44).isActive = true
        fullImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        fullImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        fullImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        fullImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
