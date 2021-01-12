//
//  AnalyticsService.swift
//  AdoptMe
//
//  Created by Seoa Han on 12/30/20.
//

import Foundation
import FirebaseAnalytics

class AnalyticsService {
    
    static let instance = AnalyticsService()
    
    
    func likePostDoubleTap() {
        Analytics.logEvent("like_double_tap", parameters: nil)
    }
    
    func likePostHeartPressed() {
        Analytics.logEvent("like_heart_clicked", parameters: nil)
    }
    
}
