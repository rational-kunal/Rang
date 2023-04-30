/**
 * Used to web scrape https://www.w3.org/wiki/CSS/Properties/color/keywords
 */

var colorWithProperCapitalization = ["aliceBlue", "antiqueWhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedAlmond", "blue", "blueViolet", "brown", "burlyWood", "cadetBlue", "chartreuse", "chocolate", "coral", "cornflowerBlue", "cornsilk", "crimson", "cyan", "darkBlue", "darkCyan", "darkGoldenRod", "darkGray", "darkGrey", "darkGreen", "darkKhaki", "darkMagenta", "darkOliveGreen", "darkOrange", "darkOrchid", "darkRed", "darkSalmon", "darkSeaGreen", "darkSlateBlue", "darkSlateGray", "darkSlateGrey", "darkTurquoise", "darkViolet", "deepPink", "deepSkyBlue", "dimGray", "dimGrey", "dodgerBlue", "fireBrick", "floralWhite", "forestGreen", "fuchsia", "gainsboro", "ghostWhite", "gold", "goldenRod", "gray", "grey", "green", "greenYellow", "honeyDew", "hotPink", "indianRed", "indigo", "ivory", "khaki", "lavender", "lavenderBlush", "lawnGreen", "lemonChiffon", "lightBlue", "lightCoral", "lightCyan", "lightGoldenRodYellow", "lightGray", "lightGrey", "lightGreen", "lightPink", "lightSalmon", "lightSeaGreen", "lightSkyBlue", "lightSlateGray", "lightSlateGrey", "lightSteelBlue", "lightYellow", "lime", "limeGreen", "linen", "magenta", "maroon", "mediumAquamarine", "mediumBlue", "mediumOrchid", "mediumPurple", "mediumSeaGreen", "mediumSlateBlue", "mediumSpringGreen", "mediumTurquoise", "mediumVioletRed", "midnightBlue", "mintCream", "mistyRose", "moccasin", "navajoWhite", "navy", "oldLace", "olive", "oliveDrab", "orange", "orangeRed", "orchid", "paleGoldenRod", "paleGreen", "paleTurquoise", "paleVioletRed", "papayaWhip", "peachPuff", "peru", "pink", "plum", "powderBlue", "purple", "rebeccaPurple", "red", "rosyBrown", "royalBlue", "saddleBrown", "salmon", "sandyBrown", "seaGreen", "seaShell", "sienna", "silver", "skyBlue", "slateBlue", "slateGray", "slateGrey", "snow", "springGreen", "steelBlue", "tan", "teal", "thistle", "tomato", "turquoise", "violet", "wheat", "white", "whiteSmoke", "yellow", "yellowGreen"];
let reservedUIKitFixedColors = [ "black", "blue", "brown", "cyan", "darkGray", "gray", "green", "lightGray", "magenta", "orange", "purple", "red", "white", "yellow"]

function camelCaseIt(color) {
	return colorWithProperCapitalization.find((x) => x.toLowerCase() === color.toLowerCase())
}

function genTheColorFn(color, value) {
    return `static var ${color}: UIColor { return UIColor(${value}) }
    `
}

function genListIten(color) {
    return `ColorDetail(color: .${color}, name: "${color}"),
`
}

let out = ""
let seen = new Set()
for (const table of document.getElementsByTagName("table")) {
    for (const row of table.getElementsByTagName("tr")) {
        const cols = Array.from(row.getElementsByTagName("td"))
        const colorEl = cols[2]
        const valueEl = cols[4]
        if (colorEl && valueEl) {
            const color = colorEl.textContent.replace(/^\s+|\s+$/g, '');
            const value = valueEl.textContent.replace(/^\s+|\s+$/g, '');
			
			const camelCaseColor = camelCaseIt(color)
            if (!seen.has(camelCaseColor) && (reservedUIKitFixedColors.findIndex(c => c === camelCaseColor)) === -1) {
                out += genTheColorFn(camelCaseColor, value)
                seen.add(camelCaseColor)
            }
        }
    }
}
out += ""

console.log(out)

