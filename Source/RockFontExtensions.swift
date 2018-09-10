//
//  RockFontExtensions.swift
//  RockFont
//
//  Copyright © 2018 @andresilvagomez.
//

import UIKit

extension UIControl {
    fileprivate var states: [UIControlState] {
        return [UIControlState.normal, .selected, .disabled, .focused, .highlighted, .application]
    }
    
    fileprivate static var states: [UIControlState] {
        return [UIControlState.normal, .selected, .disabled, .focused, .highlighted, .application]
    }
}

extension UIBarButtonItem {
    public static func easyTheme(size: CGFloat, style: String? = nil) {
        let attributes = RockFont.shared.fontAttributedAppearence(size: size, style: style)
        for state in UIControl.states {
            UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: state)
        }
    }
}

extension UITabBarItem {
    public static func easyTheme(size: CGFloat, style: String? = nil) {
        let attributes = RockFont.shared.fontAttributedAppearence(size: size, style: style)
        appearance().setTitleTextAttributes(attributes, for: .normal)
    }
}

extension UIButton {
    open override func awakeFromNib() {
        super.awakeFromNib()
        guard let font = titleLabel?.font else { return }
        titleLabel?.font = RockFont.shared.customFor(font)
    }
}

extension UILabel {
    open override func awakeFromNib() {
        super.awakeFromNib()
        font = RockFont.shared.customFor(font)
    }
}

extension UISearchBar {
    open override func awakeFromNib() {
        super.awakeFromNib()
        guard let textFieldInsideSearchBar = value(forKey: "searchField") as? UITextField else { return }
        guard let font = textFieldInsideSearchBar.font else { return }
        textFieldInsideSearchBar.font = RockFont.shared.customFor(font)
    }
}

extension UINavigationBar {
    open override func awakeFromNib() {
        super.awakeFromNib()
        if let font = titleTextAttributes?[NSAttributedStringKey.font] as? UIFont {
            titleTextAttributes = RockFont.shared.fontAttributedAppearence(font: font)
        }
        
        if #available(iOSApplicationExtension 11.0, *) {
            if let font = largeTitleTextAttributes?[NSAttributedStringKey.font] as? UIFont {
                largeTitleTextAttributes = RockFont.shared.fontAttributedAppearence(font: font)
            }
        }
    }
}

extension UITextField {
    open override func awakeFromNib() {
        super.awakeFromNib()
        guard let currentFont = font else { return }
        font = RockFont.shared.customFor(currentFont)
    }
}

extension UITextView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        guard let currentFont = font else {
            return
        }
        font = RockFont.shared.customFor(currentFont)
    }
}

extension UITableViewCell {
    open override func awakeFromNib() {
        super.awakeFromNib()
        changeText()
        changeDetail()
    }
    
    private func changeText() {
        guard let currentFont = textLabel?.font else { return }
        textLabel?.font = RockFont.shared.customFor(currentFont)
    }
    
    private func changeDetail() {
        guard let currentFont = detailTextLabel?.font else { return }
        detailTextLabel?.font = RockFont.shared.customFor(currentFont)
    }
}

extension UITableViewHeaderFooterView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        changeText()
        changeDetail()
    }
    
    private func changeText() {
        guard let currentFont = textLabel?.font else { return }
        textLabel?.font = RockFont.shared.customFor(currentFont)
    }
    
    private func changeDetail() {
        guard let currentFont = detailTextLabel?.font else { return }
        detailTextLabel?.font = RockFont.shared.customFor(currentFont)
    }
}

