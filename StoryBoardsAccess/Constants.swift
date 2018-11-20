//
//  Constants.swift
//  StoryBoardsAccess
//
//  Created by Yugandhar Kommineni on 11/19/18.
//  Copyright © 2018 Yugandhar Kommineni. All rights reserved.
//

import UIKit

// MARK: - StoryBoards
@objc enum StoryBoardName: Int, RawRepresentable {
    case albums
    case companyDetails
    case googleMaps
    case music
    case product
    case vehicles
    case moreOptions
    case main
    case login
    case unKnown
 
    private enum k {
        static let albums = "Albums"
        static let companyDetails = "CompanyDetails"
        static let googleMaps = "GoogleMaps"
        static let music = "MusicList"
        static let product = "ProductInformation"
        static let vehicles = "MotorVehicles"
        static let moreOptions = "MoreOptions"
        static let login = "Login"
        static let main = "Main"
    }
    
    public typealias RawValue = String
    
    public var rawValue: RawValue {
        switch self {
        case .albums:
            return k.albums
        case .companyDetails:
            return k.companyDetails
        case .googleMaps:
            return k.googleMaps
        case .music:
            return k.music
        case .product:
            return k.product
        case .vehicles:
            return k.vehicles
        case .moreOptions:
            return k.moreOptions
        case .main:
            return k.main
        case .login:
            return k.login
        case .unKnown:
            return ""
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue {
        case k.albums:
            self = .albums
        case k.companyDetails:
            self = .companyDetails
        case k.googleMaps:
            self = .googleMaps
        case k.music:
            self = .music
        case k.product:
            self = .product
        case k.vehicles:
            self = .vehicles
        case k.moreOptions:
            self = .moreOptions
        case k.main:
            self = .main
        case k.login:
            self = .login
        default:
            self = .unKnown
        }
    }
}
