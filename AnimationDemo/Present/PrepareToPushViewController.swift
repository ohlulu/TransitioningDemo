//
//  RrepareToPushViewController.swift
//  AnimationDemo
//
//  Created by ohlulu on 2019/1/20.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

class PrepareToPushViewController: UIViewController {
    
    let button = UIButton(type: .system)
    let animation = CustomTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.contents = UIImage(named: "start.jpg")?.cgImage
        view.layer.contentsGravity = .resizeAspectFill
        
        button.setTitle("Go", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.backgroundColor = .white
        button.setTitleColor(.gray, for: .normal)
        button.layer.cornerRadius = 30
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.size.equalTo(60)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(0)
        }
    }
}

// MARK: Setup UI methods

extension PrepareToPushViewController {
    @objc func buttonPressed() {
        let vc = PresentSecondViewController()
        animation.destinationPoint = button.center
        vc.transitioningDelegate = animation
        vc.modalPresentationStyle = .custom
        animation.interation.wire(viewController: vc)
        present(vc, animated: true, completion: nil)
    }
}
