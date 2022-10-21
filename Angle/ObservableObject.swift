//
//  ObservableObject.swift
//  Angle
//
//  Created by Rıdvan Yılmaz on 21.10.2022.
//

import Foundation

final class ObservableObject<T> {
    
    var value : T?
    
    private var listener: ((T?) -> Void)?
    
    init(_ value: T?) {
        self.value = value
    }
    
    func bind (_ listener: @escaping(T?) -> Void) {
        listener(value)
        self.listener = listener
    }
}
