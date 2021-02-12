//
//  UITabBarController+Extensions.swift
//  Animated TabBar hiding
//
//  Created by Dmytrii Golovanov on 11.02.2021.
//
//  https://github.com/dmytriigolovanov/animated-uitabbar-hiding
//
//  MIT License https://github.com/dmytriigolovanov/animated-uitabbar-hiding/blob/main/LICENSE
//

import UIKit

extension UITabBarController {
    
    static let hideShowBarDuration: CGFloat = 0.2
    
    private func tabBarOriginY(hidden: Bool) -> CGFloat {
        return view.frame.maxY - (hidden ? 0 : tabBar.frame.size.height)
    }

    func setTabBarHidden(_ hidden: Bool, animated: Bool) {
        if hidden == false {
            if self.tabBar.isHidden == true {
                self.tabBar.frame.origin.y = self.tabBarOriginY(hidden: true)
            }
            self.tabBar.isHidden = false
        }

        let duration = TimeInterval(animated ? Self.hideShowBarDuration : 0)

        UIView.animate(withDuration: duration, animations: {
            let bottomInset = hidden ? self.compensatingToZeroSafeAreaBottomInset : 0
            self.additionalSafeAreaInsets.bottom = bottomInset

            self.viewControllers?.forEach({ vc in
                var vcBottomInset = hidden ? (vc.compensatingToZeroSafeAreaBottomInset + bottomInset) : 0
                if hidden {
                    vcBottomInset -= self.tabBar.frame.height
                }
                vc.additionalSafeAreaInsets.bottom = vcBottomInset
            })
            self.view.setNeedsDisplay()
            self.view.layoutIfNeeded()

            self.tabBar.frame.origin.y = self.tabBarOriginY(hidden: hidden)
        }, completion: { _ in
            if hidden {
                self.tabBar.isHidden = hidden
            }
        })
    }
}
