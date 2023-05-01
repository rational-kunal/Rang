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

// MARK: Random Color

public extension UIColor {
    static var random: UIColor {
        let red = Int.random(in: 0 ... 255)
        let green = Int.random(in: 0 ... 255)
        let blue = Int.random(in: 0 ... 255)
        return UIColor(red, green, blue)
    }
}

// MARK: CSS Standard Colors

public extension UIColor {
    static var silver: UIColor { return UIColor(192, 192, 192) }
    static var maroon: UIColor { return UIColor(128, 0, 0) }
    static var fuchsia: UIColor { return UIColor(255, 0, 255) }
    static var lime: UIColor { return UIColor(0, 255, 0) }
    static var olive: UIColor { return UIColor(128, 128, 0) }
    static var navy: UIColor { return UIColor(0, 0, 128) }
    static var teal: UIColor { return UIColor(0, 128, 128) }
    static var aqua: UIColor { return UIColor(0, 255, 255) }
    static var aliceBlue: UIColor { return UIColor(240, 248, 255) }
    static var antiqueWhite: UIColor { return UIColor(250, 235, 215) }
    static var aquamarine: UIColor { return UIColor(127, 255, 212) }
    static var azure: UIColor { return UIColor(240, 255, 255) }
    static var beige: UIColor { return UIColor(245, 245, 220) }
    static var bisque: UIColor { return UIColor(255, 228, 196) }
    static var blanchedAlmond: UIColor { return UIColor(255, 235, 205) }
    static var blueViolet: UIColor { return UIColor(138, 43, 226) }
    static var burlyWood: UIColor { return UIColor(222, 184, 135) }
    static var cadetBlue: UIColor { return UIColor(95, 158, 160) }
    static var chartreuse: UIColor { return UIColor(127, 255, 0) }
    static var chocolate: UIColor { return UIColor(210, 105, 30) }
    static var coral: UIColor { return UIColor(255, 127, 80) }
    static var cornflowerBlue: UIColor { return UIColor(100, 149, 237) }
    static var cornsilk: UIColor { return UIColor(255, 248, 220) }
    static var crimson: UIColor { return UIColor(220, 20, 60) }
    static var darkBlue: UIColor { return UIColor(0, 0, 139) }
    static var darkCyan: UIColor { return UIColor(0, 139, 139) }
    static var darkGoldenRod: UIColor { return UIColor(184, 134, 11) }
    static var darkGreen: UIColor { return UIColor(0, 100, 0) }
    static var darkGrey: UIColor { return UIColor(169, 169, 169) }
    static var darkKhaki: UIColor { return UIColor(189, 183, 107) }
    static var darkMagenta: UIColor { return UIColor(139, 0, 139) }
    static var darkOliveGreen: UIColor { return UIColor(85, 107, 47) }
    static var darkOrange: UIColor { return UIColor(255, 140, 0) }
    static var darkOrchid: UIColor { return UIColor(153, 50, 204) }
    static var darkRed: UIColor { return UIColor(139, 0, 0) }
    static var darkSalmon: UIColor { return UIColor(233, 150, 122) }
    static var darkSeaGreen: UIColor { return UIColor(143, 188, 143) }
    static var darkSlateBlue: UIColor { return UIColor(72, 61, 139) }
    static var darkSlateGray: UIColor { return UIColor(47, 79, 79) }
    static var darkSlateGrey: UIColor { return UIColor(47, 79, 79) }
    static var darkTurquoise: UIColor { return UIColor(0, 206, 209) }
    static var darkViolet: UIColor { return UIColor(148, 0, 211) }
    static var deepPink: UIColor { return UIColor(255, 20, 147) }
    static var deepSkyBlue: UIColor { return UIColor(0, 191, 255) }
    static var dimGray: UIColor { return UIColor(105, 105, 105) }
    static var dimGrey: UIColor { return UIColor(105, 105, 105) }
    static var dodgerBlue: UIColor { return UIColor(30, 144, 255) }
    static var fireBrick: UIColor { return UIColor(178, 34, 34) }
    static var floralWhite: UIColor { return UIColor(255, 250, 240) }
    static var forestGreen: UIColor { return UIColor(34, 139, 34) }
    static var gainsboro: UIColor { return UIColor(220, 220, 220) }
    static var ghostWhite: UIColor { return UIColor(248, 248, 255) }
    static var gold: UIColor { return UIColor(255, 215, 0) }
    static var goldenRod: UIColor { return UIColor(218, 165, 32) }
    static var greenYellow: UIColor { return UIColor(173, 255, 47) }
    static var grey: UIColor { return UIColor(128, 128, 128) }
    static var honeyDew: UIColor { return UIColor(240, 255, 240) }
    static var hotPink: UIColor { return UIColor(255, 105, 180) }
    static var indianRed: UIColor { return UIColor(205, 92, 92) }
    static var indigo: UIColor { return UIColor(75, 0, 130) }
    static var ivory: UIColor { return UIColor(255, 255, 240) }
    static var khaki: UIColor { return UIColor(240, 230, 140) }
    static var lavender: UIColor { return UIColor(230, 230, 250) }
    static var lavenderBlush: UIColor { return UIColor(255, 240, 245) }
    static var lawnGreen: UIColor { return UIColor(124, 252, 0) }
    static var lemonChiffon: UIColor { return UIColor(255, 250, 205) }
    static var lightBlue: UIColor { return UIColor(173, 216, 230) }
    static var lightCoral: UIColor { return UIColor(240, 128, 128) }
    static var lightCyan: UIColor { return UIColor(224, 255, 255) }
    static var lightGoldenRodYellow: UIColor { return UIColor(250, 250, 210) }
    static var lightGreen: UIColor { return UIColor(144, 238, 144) }
    static var lightGrey: UIColor { return UIColor(211, 211, 211) }
    static var lightPink: UIColor { return UIColor(255, 182, 193) }
    static var lightSalmon: UIColor { return UIColor(255, 160, 122) }
    static var lightSeaGreen: UIColor { return UIColor(32, 178, 170) }
    static var lightSkyBlue: UIColor { return UIColor(135, 206, 250) }
    static var lightSlateGray: UIColor { return UIColor(119, 136, 153) }
    static var lightSlateGrey: UIColor { return UIColor(119, 136, 153) }
    static var lightSteelBlue: UIColor { return UIColor(176, 196, 222) }
    static var lightYellow: UIColor { return UIColor(255, 255, 224) }
    static var limeGreen: UIColor { return UIColor(50, 205, 50) }
    static var linen: UIColor { return UIColor(250, 240, 230) }
    static var mediumAquamarine: UIColor { return UIColor(102, 205, 170) }
    static var mediumBlue: UIColor { return UIColor(0, 0, 205) }
    static var mediumOrchid: UIColor { return UIColor(186, 85, 211) }
    static var mediumPurple: UIColor { return UIColor(147, 112, 219) }
    static var mediumSeaGreen: UIColor { return UIColor(60, 179, 113) }
    static var mediumSlateBlue: UIColor { return UIColor(123, 104, 238) }
    static var mediumSpringGreen: UIColor { return UIColor(0, 250, 154) }
    static var mediumTurquoise: UIColor { return UIColor(72, 209, 204) }
    static var mediumVioletRed: UIColor { return UIColor(199, 21, 133) }
    static var midnightBlue: UIColor { return UIColor(25, 25, 112) }
    static var mintCream: UIColor { return UIColor(245, 255, 250) }
    static var mistyRose: UIColor { return UIColor(255, 228, 225) }
    static var moccasin: UIColor { return UIColor(255, 228, 181) }
    static var navajoWhite: UIColor { return UIColor(255, 222, 173) }
    static var oldLace: UIColor { return UIColor(253, 245, 230) }
    static var oliveDrab: UIColor { return UIColor(107, 142, 35) }
    static var orangeRed: UIColor { return UIColor(255, 69, 0) }
    static var orchid: UIColor { return UIColor(218, 112, 214) }
    static var paleGoldenRod: UIColor { return UIColor(238, 232, 170) }
    static var paleGreen: UIColor { return UIColor(152, 251, 152) }
    static var paleTurquoise: UIColor { return UIColor(175, 238, 238) }
    static var paleVioletRed: UIColor { return UIColor(219, 112, 147) }
    static var papayaWhip: UIColor { return UIColor(255, 239, 213) }
    static var peachPuff: UIColor { return UIColor(255, 218, 185) }
    static var peru: UIColor { return UIColor(205, 133, 63) }
    static var pink: UIColor { return UIColor(255, 192, 203) }
    static var plum: UIColor { return UIColor(221, 160, 221) }
    static var powderBlue: UIColor { return UIColor(176, 224, 230) }
    static var rosyBrown: UIColor { return UIColor(188, 143, 143) }
    static var royalBlue: UIColor { return UIColor(65, 105, 225) }
    static var saddleBrown: UIColor { return UIColor(139, 69, 19) }
    static var salmon: UIColor { return UIColor(250, 128, 114) }
    static var sandyBrown: UIColor { return UIColor(244, 164, 96) }
    static var seaGreen: UIColor { return UIColor(46, 139, 87) }
    static var seaShell: UIColor { return UIColor(255, 245, 238) }
    static var sienna: UIColor { return UIColor(160, 82, 45) }
    static var skyBlue: UIColor { return UIColor(135, 206, 235) }
    static var slateBlue: UIColor { return UIColor(106, 90, 205) }
    static var slateGray: UIColor { return UIColor(112, 128, 144) }
    static var slateGrey: UIColor { return UIColor(112, 128, 144) }
    static var snow: UIColor { return UIColor(255, 250, 250) }
    static var springGreen: UIColor { return UIColor(0, 255, 127) }
    static var steelBlue: UIColor { return UIColor(70, 130, 180) }
    static var tan: UIColor { return UIColor(210, 180, 140) }
    static var thistle: UIColor { return UIColor(216, 191, 216) }
    static var tomato: UIColor { return UIColor(255, 99, 71) }
    static var turquoise: UIColor { return UIColor(64, 224, 208) }
    static var violet: UIColor { return UIColor(238, 130, 238) }
    static var wheat: UIColor { return UIColor(245, 222, 179) }
    static var whiteSmoke: UIColor { return UIColor(245, 245, 245) }
    static var yellowGreen: UIColor { return UIColor(154, 205, 50) }
}

// MARK: Image with the color

public extension UIColor {
    func asImage(size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
