//
//  NavigaitonNextViewController.swift
//  AnimationDemo
//
//  Created by ohlulu on 2018/12/23.
//  Copyright © 2018 ohlulu. All rights reserved.
//

import UIKit

class NavigaitonNextViewController: UIViewController {
    
    fileprivate let fullImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    fileprivate func setupUI() {
        view.addSubview(fullImage)
        fullImage.translatesAutoresizingMaskIntoConstraints = false
        fullImage.heightAnchor.constraint(equalToConstant: 44).isActive = true
        fullImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        fullImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        fullImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
