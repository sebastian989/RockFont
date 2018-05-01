//
//  RockFont.swif
//  RockFont
//
//  Copyright © 2018 @andresilvagomez.
//

import UIKit

enum FontDefaultReplacement: String {
    case ultralight = "Ultralight"
    case bold = "Bold"
}

public class RockFont: NSObject {
    public static let shared = RockFont()
    
    private var fontName = ".SFUIDisplay"
    private var defaultStyle: String?
    private var replacements: [FontDefaultReplacement: String] = [:]
    
    public func customFor(_ font: UIFont) -> UIFont {
        let fontName = customFontName(font)
        return UIFont(name: fontName, size: font.pointSize) ?? font
    }
    
    public func setDefaultFont(_ fontName: String, defaultStyle: String? = nil) {
        self.fontName = fontName
        self.defaultStyle = defaultStyle
    }
    
    public func defaultFont(size: CGFloat) -> UIFont {
        return UIFont(name: fontName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    public func defaultFont(size: CGFloat, style: String) -> UIFont {
        let name = "\(fontName)-\(style)"
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    private func customFontName(_ font: UIFont) -> String {
        let parts = font.fontName.split(separator: "-")
        
        let styleName = parts.count > 1 ? String(parts[1]) : ""
        
        if styleName.isEmpty {
            if defaultStyle == nil {
                return fontName
            }
            return "\(fontName)-\(defaultStyle ?? "")"
        }
        
        guard let style = FontDefaultReplacement(rawValue: styleName) else {
            return "\(fontName)-\(styleName)"
        }
        
        let replacement = replacements[style]
        
        return "\(fontName)-\(replacement ?? styleName)"
    }
    
    public func availableFonts() -> [String: [String]] {
        var fonts: [String: [String]] = [:]
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            fonts[familyName] = fontNames
        })
        return fonts
    }
    
    public func availableFonts(familyName: String) -> [String] {
        let fonts = availableFonts()
        return fonts[familyName] ?? []
    }
    
    func fontAttributedAppearence(size: CGFloat, style: String? = nil) -> [NSAttributedStringKey : Any]? {
        let font = style == nil ? defaultFont(size: size) : defaultFont(size: size, style: style!)
        let attributes = [
            NSAttributedStringKey.font: font,
        ]
        return attributes
    }
    
    public func applyEasyUITheme(barButtonsSize: CGFloat = 18, tabBatSize: CGFloat = 14) {
        UIBarButtonItem.easyTheme(size: barButtonsSize)
        UITabBarItem.easyTheme(size: tabBatSize)
    }
}
