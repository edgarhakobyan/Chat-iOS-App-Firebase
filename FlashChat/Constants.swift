//
//  Constants.swift
//  FlashChat
//
//  Created by Edgar on 8/27/20.
//  Copyright © 2020 Edgar. All rights reserved.
//

struct Constants {
    static let appName = "⚡️FlashChat"
    
    struct Cells {
        static let cellIdentifier = "ReusableCell"
        static let cellNibName = "MessageCell"
    }
    
    struct Segues {
        static let registerSegue = "RegisterToChat"
        static let loginSegue = "LoginToChat"
    }
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
