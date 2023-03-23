//
//  AssetManager.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import SwiftUI


struct AssetManager {
    struct Images {}
    struct Colors {}
}

extension AssetManager.Colors {
    enum ImageAssets: String, CaseIterable {
        case appIcon = "App Icon"
    }
    
    static func getImage(named imageName: ImageAssets) -> Image {
        return Image(uiImage: getUIImage(named: imageName))
    }
    
    static func getUIImage(named imageName: ImageAssets) -> UIImage {
        guard let image = UIImage(named: imageName.rawValue) else {
            
            preconditionFailure("Error: The image named \(imageName) was not found, Function: \(#function)")
        }
        
        return image
    }
}

extension AssetManager.Images {
    enum ImageAssets: String, CaseIterable {
        case appIcon = "App Icon"
    }
    
    static func getImage(named imageName: ImageAssets) -> Image {
        return Image(uiImage: getUIImage(named: imageName))
    }
    
    static func getUIImage(named imageName: ImageAssets) -> UIImage {
        guard let image = UIImage(named: imageName.rawValue) else {
            
            preconditionFailure("Error: The image named \(imageName) was not found, Function: \(#function)")
        }
        
        return image
    }
}

