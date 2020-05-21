//
//  LSQNamespace.swift
//  LSQFramework
//
//  Created by muzico on 2020/5/21.
//  Copyright © 2020 muzico. All rights reserved.
//

import UIKit

public protocol LSQNamespaceWrappable {
    associatedtype LSQWrapperType
    var lsq: LSQWrapperType { get }
    static var lsq: LSQWrapperType.Type { get }
}
public extension LSQNamespaceWrappable {
    var lsq: LSQNamespaceWrapper<Self> {
        return LSQNamespaceWrapper(value: self)
    }
    static var lsq: LSQNamespaceWrapper<Self>.Type {
        return LSQNamespaceWrapper.self
    }
}
public protocol LSQTypeWrapperProtocol {
    associatedtype LSQWrappedType
    var wrappedValue: LSQWrappedType { get }
    init(value: LSQWrappedType)
}
public struct LSQNamespaceWrapper<T>: LSQTypeWrapperProtocol {
    public let wrappedValue: T
    public init(value: T) {
        self.wrappedValue = value
    }
}
