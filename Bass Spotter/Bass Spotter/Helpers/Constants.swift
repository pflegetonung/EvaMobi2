//
//  Constants.swift
//  Bass Spotter
//
//  Created by Phillip on 01.08.2024.
//

import Foundation
import AdSupport

struct Constants {
    static let universalKey = "RXEZpdsJXd5OvX6F5uANsLWTPG2NMlR9"
    static let ud = UserDefaults.standard
    
    enum Key: String {
        case hasInitSetup = "__HAS_INIT_SETUP"
        case isFirstSession = "__IS_FIRST_SESSION"
    }
    
    static let onesignalKey = "8bcef81a-1016-4ddc-abbe-be77519ed66a"
    static let webViewURL = "https://sprtbestdop.site/spot"
    
    static var idfa: String {
        ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
    
    static var shorParrametr: URL? {
        get { ud.url(forKey: "qweqwe") }
        set { ud.set(newValue, forKey: "qweqwe") }
    }
    
    static var longParrametr: URL? {
        get { ud.url(forKey: "long")}
        set { ud.set(newValue, forKey: "long") }
    }
    
    static var lastУРЛ: URL? {
        get { ud.url(forKey: "last")}
        set { ud.set(newValue, forKey: "last") }
    }
    
    static private var hasInitSetup: Bool {
        set { ud.setBool(newValue, for: .hasInitSetup) }
        get { ud.getBool(for: .hasInitSetup) }
    }
    
    static var isFirstSession: Bool {
        set { ud.setBool(newValue, for: .isFirstSession) }
        get { ud.getBool(for: .isFirstSession) }
    }
    
    static func setupFirstLaunch() {
        if hasInitSetup == false {
            isFirstSession = true
            hasInitSetup = true
        }
    }
}

extension UserDefaults {
    func setBool(_ value: Bool, for key: Constants.Key) {
        setValue(value, forKey: key.rawValue)
    }
    
    func getBool(for key: Constants.Key) -> Bool {
        bool(forKey: key.rawValue)
    }
}
