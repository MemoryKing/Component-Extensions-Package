import UIKit
import Foundation
import AdSupport

extension UIApplication {
    
    /// 应用版本号
    public static var appVersion: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
    
    /// 编译版本号
    public static var bundleVersion: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""
    }
    
    /// 应用名称
    public static var appName: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
    }
    
    /// 系统版本
    public static var osVersion: String {
        ProcessInfo.processInfo.operatingSystemVersionString
    }
    
    /// 广告标识符
    public static var IDFA: String? {
        ASIdentifierManager.shared().isAdvertisingTrackingEnabled ?
            ASIdentifierManager.shared().advertisingIdentifier.uuidString : nil
    }
}
