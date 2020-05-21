//
//  UIView+LSQ.swift
//  LSQFramework
//
//  Created by muzico on 2020/5/21.
//  Copyright © 2020 muzico. All rights reserved.
//

import UIKit

extension UIView: LSQNamespaceWrappable {}
extension LSQTypeWrapperProtocol where LSQWrappedType == UIView {
    /**
    设置背景色为红色。
    */
    public func red() {
        wrappedValue.self.backgroundColor = UIColor.red
    }
    /**
     设置背景色为橙色。
     */
    public func orange() {
        wrappedValue.self.backgroundColor = UIColor.orange
    }
}

extension UIView {
    /**
    设置背景色为红色。
    */
    @objc public func lsq_red() {
        self.backgroundColor = UIColor.red
    }
    /**
    设置背景色为橙色。
    */
    @objc public func lsq_orange() {
        self.backgroundColor = UIColor.orange
    }
}
