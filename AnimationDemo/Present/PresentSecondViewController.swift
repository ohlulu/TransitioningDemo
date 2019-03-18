//
//  PresentSecondViewController.swift
//  AnimationDemo
//
//  Created by ohlulu on 2019/1/20.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

class PresentSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.layer.contents = UIImage(named: "end.jpg")?.cgImage
        view.layer.contentsGravity = .resizeAspectFill
        
        let button = UIButton(frame: .zero)
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        
        button.setTitle("X", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.gray, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 30
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.size.equalTo(60)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(0)
        }
        view.layoutIfNeeded()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @objc func pressed() {
        dismiss(animated: true, completion: nil)
    }

}
