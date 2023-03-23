//
//  AssetManager.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import SwiftUI

// High level manager that encapsulates all necessary images and colors
struct AssetManager {
    struct Images {}
    struct Colors {}
}

extension AssetManager.Colors {
    enum ColorRepository: String, CaseIterable {
        case primary_1
    }
    
    static func getColor(named colorName: ColorRepository) -> Color {
        let color = Color(getUIColor(named: colorName))
        
        return color
    }
    
    static func getUIColor(named colorName: ColorRepository) -> UIColor {
        guard let uiColor = UIColor(named: colorName.rawValue) else {
            preconditionFailure("Error: The color named \(colorName) was not found, Function: \(#function)")
        }
        
        return uiColor
    }
    
    // Literal Colors
    static var primary_1: Color {
        return getColor(named: .primary_1)
    }
}

extension AssetManager.Images {
    enum ImageRepository: String, CaseIterable {
        case appIcon = "App Icon"
        case appLogoTransparent = "AppLogoTransparent"
    }
    
    static func getImage(named imageName: ImageRepository) -> Image {
        return Image(uiImage: getUIImage(named: imageName))
    }
    
    static func getUIImage(named imageName: ImageRepository) -> UIImage {
        guard let image = UIImage(named: imageName.rawValue) else {
            
            preconditionFailure("Error: The image named \(imageName) was not found, Function: \(#function)")
        }
        
        return image
    }
}

