//
//  OHTableCellToTop.swift
//  AnimationDemo
//
//  Created by ohlulu on 2018/12/23.
//  Copyright © 2018 ohlulu. All rights reserved.
//

import Foundation
import UIKit

class OHTableCellToTop: NSObject, UIViewControllerAnimatedTransitioning {
    
    var popStyle: Bool = false
    
    func transitionDuration(
        using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.20
        
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let container = transitionContext.containerView
        
        let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!
        let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!
        
        let fromView: UIView = fromVC.view
        let toView: UIView = toVC.view
        
        popStyle ? container.insertSubview(toView, belowSubview: fromView) : container.addSubview(toView)
        
        let finalView = popStyle ? fromView : toView
        
        toView.frame = popStyle ? toView.frame :
            CGRect(x: fromView.frame.width, y: 0, width: toView.frame.width, height: toView.frame.height)
        
        toView.alpha = popStyle ? 1 : 0
        toView.layoutIfNeeded()
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            animations: {
                finalView.frame = self.popStyle ? CGRect(x: toView.frame.width, y: 0, width: toView.frame.width, height: toView.frame.height) : fromView.frame
                finalView.alpha = self.popStyle ? 0 : 1
        }) { _ in
            transitionContext.completeTransition(true)
        }
    }
}
