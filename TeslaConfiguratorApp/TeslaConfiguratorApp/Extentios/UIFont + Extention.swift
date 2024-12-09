//
//  UIFont + Extention.swift
//  TeslaConfiguratorApp
//
//  Created by Max on 09.12.2024.
//

import UIKit

extension UIFont {
    enum Gotham: String {
        case light = "gothampro-light"
        case regular = "gothampro"
        case medium = "gothampro-medium"
        case bold = "gothampro-bold"
        
        func set(size: CGFloat) -> UIFont? {
            switch self {
            case .light:
                return UIFont(name: Self.light.rawValue, size: size)
            case .regular:
                return UIFont(name: Self.regular.rawValue, size: size)
            case .medium:
                return UIFont(name: Self.medium.rawValue, size: size)
            case .bold:
                return UIFont(name: Self.bold.rawValue, size: size)
            }
        }
    }
}
