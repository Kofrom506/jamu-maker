//
//  Font.swift
//  jamuMaking
//
//  Created by Evan Susanto on 08/04/23.
//

import Foundation
import SwiftUI

public enum JFontFamily {
    case systemFont
    case poppins
    case leagueSpartan
}

public struct JFont {
    
    /// custom thin font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func thin(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.thin)
        case .poppins:
            return .custom("Poppins-Thin", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Thin", size: size)
        }
    }
    
    /// custom light font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func light(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.light)
        case .poppins:
            return .custom("Poppins-Light", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Light", size: size)
        }
    }
    
    /// custom regular font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func regular(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.regular)
        case .poppins:
            return .custom("Poppins-Regular", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Regular", size: size)
        }
    }
    
    /// custom italic font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func italic(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.regular).italic()
        case .poppins:
            return .custom("Poppins-Italic", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Regular", size: size) // League Spartan not support for Italic
        }
    }
    
    /// custom medium font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func medium(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.medium)
        case .poppins:
            return .custom("Poppins-Medium", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Medium", size: size)
        }
    }
    
    /// custom semi bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func semiBold(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.semibold)
        case .poppins:
            return .custom("Poppins-SemiBold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-SemiBold", size: size)
        }
    }
    
    /// custom bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func bold(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.bold)
        case .poppins:
            return .custom("Poppins-Bold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Bold", size: size)
        }
    }
    
    ///  custom extra bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func extraBold(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.black)
        case .poppins:
            return .custom("Poppins-ExtraBold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-ExtraBold", size: size)
        }
    }
    
    /// custom black font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func black(fontFamily: JFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.black)
        case .poppins:
            return .custom("Poppins-Black", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Black", size: size)
        }
    }
}
