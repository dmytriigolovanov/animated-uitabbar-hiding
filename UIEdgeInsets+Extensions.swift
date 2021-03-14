//
//  UIEdgeInsets+Extensions.swift
//  ChildrensalonApp
//
//  Created by Dima Golovanov on 3/4/21.
//  Copyright © 2021 Childrensalon. All rights reserved.
//

import UIKit

func - (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: lhs.top - rhs.top,
                        left: lhs.left - rhs.left,
                        bottom: lhs.bottom - rhs.bottom,
                        right: lhs.right - rhs.right)
}
