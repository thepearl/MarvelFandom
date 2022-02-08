//
//  String.Extensions.swift
//  marvel
//
//  Created by Ghazi Tozri on 8/2/2022.
//

import Foundation

extension String {
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
}
