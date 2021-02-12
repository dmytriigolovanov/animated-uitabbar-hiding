//
//  UIViewController+Extensions.swift
//  Animated TabBar hiding
//
//  Created by Dmytrii Golovanov on 11.02.2021.
//
//  https://github.com/dmytriigolovanov/animated-uitabbar-hiding
//
//  MIT License https://github.com/dmytriigolovanov/animated-uitabbar-hiding/blob/main/LICENSE
//

import UIKit

extension UIViewController {
    var compensatingToZeroSafeAreaBottomInset: CGFloat {
        let bottom = self.view.safeAreaInsets.bottom - self.additionalSafeAreaInsets.bottom
        return 0 - bottom
    }
}
