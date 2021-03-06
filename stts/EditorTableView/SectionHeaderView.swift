//
//  SectionHeaderView.swift
//  stts
//

import Cocoa

class SectionHeaderView: NSTextField {
    init(name: String) {
        super.init(frame: .zero)

        setup()
        self.stringValue = name
    }

    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        setup()
    }

    private func setup() {
        self.isEditable = false
        self.isBordered = false
        self.isSelectable = false
        let italicFont = NSFontManager.shared().font(withFamily: NSFont.systemFont(ofSize: 10).fontName,
                                                     traits: NSFontTraitMask.italicFontMask,
                                                     weight: 5,
                                                     size: 10)
        self.font = italicFont
        self.textColor = NSColor(calibratedWhite: 0, alpha: 0.5)
        self.maximumNumberOfLines = 1
        self.cell!.truncatesLastVisibleLine = true
        self.backgroundColor = NSColor.clear
    }
}
