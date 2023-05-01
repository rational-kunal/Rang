//
//  ViewController.swift
//  Rang
//
//  Created by Kunal Kamble on 04/29/2023.
//  Copyright (c) 2023 Kunal Kamble. All rights reserved.
//

import Rang
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let tableView = UITableView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }

    // MARK: UITableViewDataSource

    func numberOfSections(in _: UITableView) -> Int {
        // Sections:
        // 1st -> UIKit Fixed Colors
        // 2nd -> Rang Extended Colors
        return 2
    }

    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { return UIKitFixedColorAndName.count }
        else if section == 1 { return rangColorAndName.count }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!

        var colorDetail: ColorDetail?
        if indexPath.section == 0 { colorDetail = UIKitFixedColorAndName[indexPath.row] }
        else if indexPath.section == 1 { colorDetail = rangColorAndName[indexPath.row] }

        var content = cell.defaultContentConfiguration()
        content.image = colorDetail?.color.asImage(size: CGSizeMake(84, 32))
        content.imageProperties.cornerRadius = 4
        content.text = colorDetail?.name
        cell.contentConfiguration = content

        return cell
    }

    func tableView(_: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 { return "UIKit Fixed Colors" }
        else if section == 1 { return "Rang Extended Colors" }
        return "Unknown"
    }
}

// MARK: Color and Name lists

struct ColorDetail {
    var color: UIColor
    var name: String
}

/// https://developer.apple.com/documentation/uikit/uicolor/standard_colors#3174519
let UIKitFixedColorAndName = [ColorDetail(color: .black, name: "black"),
                              ColorDetail(color: .blue, name: "blue"),
                              ColorDetail(color: .brown, name: "brown"),
                              ColorDetail(color: .cyan, name: "cyan"),
                              ColorDetail(color: .darkGray, name: "darkGray"),
                              ColorDetail(color: .gray, name: "gray"),
                              ColorDetail(color: .green, name: "green"),
                              ColorDetail(color: .lightGray, name: "lightGray"),
                              ColorDetail(color: .magenta, name: "magenta"),
                              ColorDetail(color: .orange, name: "orange"),
                              ColorDetail(color: .purple, name: "purple"),
                              ColorDetail(color: .red, name: "red"),
                              ColorDetail(color: .white, name: "white"),
                              ColorDetail(color: .yellow, name: "yellow")]

/// https://www.w3.org/wiki/CSS/Properties/color/keywords
let rangColorAndName = [ColorDetail(color: .silver, name: "silver"),
                        ColorDetail(color: .maroon, name: "maroon"),
                        ColorDetail(color: .fuchsia, name: "fuchsia"),
                        ColorDetail(color: .lime, name: "lime"),
                        ColorDetail(color: .olive, name: "olive"),
                        ColorDetail(color: .navy, name: "navy"),
                        ColorDetail(color: .teal, name: "teal"),
                        ColorDetail(color: .aqua, name: "aqua"),
                        ColorDetail(color: .aliceBlue, name: "aliceBlue"),
                        ColorDetail(color: .antiqueWhite, name: "antiqueWhite"),
                        ColorDetail(color: .aquamarine, name: "aquamarine"),
                        ColorDetail(color: .azure, name: "azure"),
                        ColorDetail(color: .beige, name: "beige"),
                        ColorDetail(color: .bisque, name: "bisque"),
                        ColorDetail(color: .blanchedAlmond, name: "blanchedAlmond"),
                        ColorDetail(color: .blueViolet, name: "blueViolet"),
                        ColorDetail(color: .burlyWood, name: "burlyWood"),
                        ColorDetail(color: .cadetBlue, name: "cadetBlue"),
                        ColorDetail(color: .chartreuse, name: "chartreuse"),
                        ColorDetail(color: .chocolate, name: "chocolate"),
                        ColorDetail(color: .coral, name: "coral"),
                        ColorDetail(color: .cornflowerBlue, name: "cornflowerBlue"),
                        ColorDetail(color: .cornsilk, name: "cornsilk"),
                        ColorDetail(color: .crimson, name: "crimson"),
                        ColorDetail(color: .darkBlue, name: "darkBlue"),
                        ColorDetail(color: .darkCyan, name: "darkCyan"),
                        ColorDetail(color: .darkGoldenRod, name: "darkGoldenRod"),
                        ColorDetail(color: .darkGreen, name: "darkGreen"),
                        ColorDetail(color: .darkGrey, name: "darkGrey"),
                        ColorDetail(color: .darkKhaki, name: "darkKhaki"),
                        ColorDetail(color: .darkMagenta, name: "darkMagenta"),
                        ColorDetail(color: .darkOliveGreen, name: "darkOliveGreen"),
                        ColorDetail(color: .darkOrange, name: "darkOrange"),
                        ColorDetail(color: .darkOrchid, name: "darkOrchid"),
                        ColorDetail(color: .darkRed, name: "darkRed"),
                        ColorDetail(color: .darkSalmon, name: "darkSalmon"),
                        ColorDetail(color: .darkSeaGreen, name: "darkSeaGreen"),
                        ColorDetail(color: .darkSlateBlue, name: "darkSlateBlue"),
                        ColorDetail(color: .darkSlateGray, name: "darkSlateGray"),
                        ColorDetail(color: .darkSlateGrey, name: "darkSlateGrey"),
                        ColorDetail(color: .darkTurquoise, name: "darkTurquoise"),
                        ColorDetail(color: .darkViolet, name: "darkViolet"),
                        ColorDetail(color: .deepPink, name: "deepPink"),
                        ColorDetail(color: .deepSkyBlue, name: "deepSkyBlue"),
                        ColorDetail(color: .dimGray, name: "dimGray"),
                        ColorDetail(color: .dimGrey, name: "dimGrey"),
                        ColorDetail(color: .dodgerBlue, name: "dodgerBlue"),
                        ColorDetail(color: .fireBrick, name: "fireBrick"),
                        ColorDetail(color: .floralWhite, name: "floralWhite"),
                        ColorDetail(color: .forestGreen, name: "forestGreen"),
                        ColorDetail(color: .gainsboro, name: "gainsboro"),
                        ColorDetail(color: .ghostWhite, name: "ghostWhite"),
                        ColorDetail(color: .gold, name: "gold"),
                        ColorDetail(color: .goldenRod, name: "goldenRod"),
                        ColorDetail(color: .greenYellow, name: "greenYellow"),
                        ColorDetail(color: .grey, name: "grey"),
                        ColorDetail(color: .honeyDew, name: "honeyDew"),
                        ColorDetail(color: .hotPink, name: "hotPink"),
                        ColorDetail(color: .indianRed, name: "indianRed"),
                        ColorDetail(color: .indigo, name: "indigo"),
                        ColorDetail(color: .ivory, name: "ivory"),
                        ColorDetail(color: .khaki, name: "khaki"),
                        ColorDetail(color: .lavender, name: "lavender"),
                        ColorDetail(color: .lavenderBlush, name: "lavenderBlush"),
                        ColorDetail(color: .lawnGreen, name: "lawnGreen"),
                        ColorDetail(color: .lemonChiffon, name: "lemonChiffon"),
                        ColorDetail(color: .lightBlue, name: "lightBlue"),
                        ColorDetail(color: .lightCoral, name: "lightCoral"),
                        ColorDetail(color: .lightCyan, name: "lightCyan"),
                        ColorDetail(color: .lightGoldenRodYellow, name: "lightGoldenRodYellow"),
                        ColorDetail(color: .lightGreen, name: "lightGreen"),
                        ColorDetail(color: .lightGrey, name: "lightGrey"),
                        ColorDetail(color: .lightPink, name: "lightPink"),
                        ColorDetail(color: .lightSalmon, name: "lightSalmon"),
                        ColorDetail(color: .lightSeaGreen, name: "lightSeaGreen"),
                        ColorDetail(color: .lightSkyBlue, name: "lightSkyBlue"),
                        ColorDetail(color: .lightSlateGray, name: "lightSlateGray"),
                        ColorDetail(color: .lightSlateGrey, name: "lightSlateGrey"),
                        ColorDetail(color: .lightSteelBlue, name: "lightSteelBlue"),
                        ColorDetail(color: .lightYellow, name: "lightYellow"),
                        ColorDetail(color: .limeGreen, name: "limeGreen"),
                        ColorDetail(color: .linen, name: "linen"),
                        ColorDetail(color: .mediumAquamarine, name: "mediumAquamarine"),
                        ColorDetail(color: .mediumBlue, name: "mediumBlue"),
                        ColorDetail(color: .mediumOrchid, name: "mediumOrchid"),
                        ColorDetail(color: .mediumPurple, name: "mediumPurple"),
                        ColorDetail(color: .mediumSeaGreen, name: "mediumSeaGreen"),
                        ColorDetail(color: .mediumSlateBlue, name: "mediumSlateBlue"),
                        ColorDetail(color: .mediumSpringGreen, name: "mediumSpringGreen"),
                        ColorDetail(color: .mediumTurquoise, name: "mediumTurquoise"),
                        ColorDetail(color: .mediumVioletRed, name: "mediumVioletRed"),
                        ColorDetail(color: .midnightBlue, name: "midnightBlue"),
                        ColorDetail(color: .mintCream, name: "mintCream"),
                        ColorDetail(color: .mistyRose, name: "mistyRose"),
                        ColorDetail(color: .moccasin, name: "moccasin"),
                        ColorDetail(color: .navajoWhite, name: "navajoWhite"),
                        ColorDetail(color: .oldLace, name: "oldLace"),
                        ColorDetail(color: .oliveDrab, name: "oliveDrab"),
                        ColorDetail(color: .orangeRed, name: "orangeRed"),
                        ColorDetail(color: .orchid, name: "orchid"),
                        ColorDetail(color: .paleGoldenRod, name: "paleGoldenRod"),
                        ColorDetail(color: .paleGreen, name: "paleGreen"),
                        ColorDetail(color: .paleTurquoise, name: "paleTurquoise"),
                        ColorDetail(color: .paleVioletRed, name: "paleVioletRed"),
                        ColorDetail(color: .papayaWhip, name: "papayaWhip"),
                        ColorDetail(color: .peachPuff, name: "peachPuff"),
                        ColorDetail(color: .peru, name: "peru"),
                        ColorDetail(color: .pink, name: "pink"),
                        ColorDetail(color: .plum, name: "plum"),
                        ColorDetail(color: .powderBlue, name: "powderBlue"),
                        ColorDetail(color: .rosyBrown, name: "rosyBrown"),
                        ColorDetail(color: .royalBlue, name: "royalBlue"),
                        ColorDetail(color: .saddleBrown, name: "saddleBrown"),
                        ColorDetail(color: .salmon, name: "salmon"),
                        ColorDetail(color: .sandyBrown, name: "sandyBrown"),
                        ColorDetail(color: .seaGreen, name: "seaGreen"),
                        ColorDetail(color: .seaShell, name: "seaShell"),
                        ColorDetail(color: .sienna, name: "sienna"),
                        ColorDetail(color: .skyBlue, name: "skyBlue"),
                        ColorDetail(color: .slateBlue, name: "slateBlue"),
                        ColorDetail(color: .slateGray, name: "slateGray"),
                        ColorDetail(color: .slateGrey, name: "slateGrey"),
                        ColorDetail(color: .snow, name: "snow"),
                        ColorDetail(color: .springGreen, name: "springGreen"),
                        ColorDetail(color: .steelBlue, name: "steelBlue"),
                        ColorDetail(color: .tan, name: "tan"),
                        ColorDetail(color: .thistle, name: "thistle"),
                        ColorDetail(color: .tomato, name: "tomato"),
                        ColorDetail(color: .turquoise, name: "turquoise"),
                        ColorDetail(color: .violet, name: "violet"),
                        ColorDetail(color: .wheat, name: "wheat"),
                        ColorDetail(color: .whiteSmoke, name: "whiteSmoke"),
                        ColorDetail(color: .yellowGreen, name: "yellowGreen")]
