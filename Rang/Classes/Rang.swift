//
//  Rang.swift
//  Rang
//
//  Created by Kunal Kamble on 29/04/23.
//

extension UIColor {
    convenience init(_ red: Int, _ green: Int, _ blue: Int) {
        self.init(red: CGFloat(red) / 255,
                  green: CGFloat(green) / 255,
                  blue: CGFloat(blue) / 255,
                  alpha: 1.0)
    }
}

// Random color
public extension UIColor {
    static var random: UIColor {
        let red = Int.random(in: 0 ... 255)
        let green = Int.random(in: 0 ... 255)
        let blue = Int.random(in: 0 ... 255)
        return UIColor(red, green, blue)
    }
}
