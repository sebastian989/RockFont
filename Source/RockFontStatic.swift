//
//  RockFontStatic.swift
//  RockFont
//
//  Created by Andres Silva Gomez on 4/30/18.
//  Copyright © 2018 Kekiiwaa. All rights reserved.
//

import UIKit

extension RockFont {
    public static var largeTitlesFontSize: CGFloat {
        get {
            return RockFont.shared.largeTitlesFontSize
        }
        set {
            return RockFont.shared.largeTitlesFontSize = newValue
        }
    }
    
    public static func customFor(_ font: UIFont) -> UIFont {
        return RockFont.shared.customFor(font)
    }
    
    public static func defaultFont(size: CGFloat) -> UIFont {
        return RockFont.shared.defaultFont(size: size)
    }
    
    public static func defaultFont(size: CGFloat, style: String) -> UIFont {
        return RockFont.shared.defaultFont(size: size, style: style)
    }
    
    public static func setDefaultFont(_ fontName: String, defaultStyle: String? = nil) {
        return RockFont.shared.setDefaultFont(fontName, defaultStyle: defaultStyle)
    }
    
    public static func availableFonts() -> [String: [String]] {
        return RockFont.shared.availableFonts()
    }
    
    public static func availableFonts(familyName: String) -> [String] {
        return RockFont.shared.availableFonts(familyName: familyName)
    }
    
    public static func fontAttributedAppearence(size: CGFloat, style: String? = nil) -> [NSAttributedStringKey : Any]? {
        return RockFont.shared.fontAttributedAppearence(size: size, style: style)
    }
    
    public static func applyEasyUITheme(barButtonsSize: CGFloat = 18, tabBatSize: CGFloat = 14) {
        return RockFont.shared.applyEasyUITheme(barButtonsSize: barButtonsSize, tabBatSize: tabBatSize)
    }
}
