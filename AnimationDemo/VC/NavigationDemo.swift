//
//  NavigationDemo.swift
//  AnimationDemo
//
//  Created by ohlulu on 2018/12/23.
//  Copyright © 2018 ohlulu. All rights reserved.
//

import UIKit

class NavigationDemo: UIViewController , UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {
    
    let animation = OHTableCellToTop()
    fileprivate lazy var table: UITableView = {
        let table = UITableView()
        table.register(CellImage.self, forCellReuseIdentifier: "cell1")
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.delegate = self
        view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController)
        -> UIViewControllerAnimatedTransitioning? {
        
            animation.popStyle = (operation == .pop)
            return animation
    }
}

// MARK: - UITableViewDelegate

extension NavigationDemo: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = NavigaitonNextViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - UITableViewDataSource

extension NavigationDemo: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellImage = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CellImage
        return cell
    }
}
