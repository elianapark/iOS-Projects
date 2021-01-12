//
//  AdoptMeApp.swift
//  AdoptMe
//
//  Created by Seoa Han on 12/29/20.
//

import SwiftUI
import FirebaseCore
import GoogleSignIn

@main
struct AdoptMeApp: App {
    
    init() {
        FirebaseApp.configure()
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID //google sign in
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL(perform: { url in
                    GIDSignIn.sharedInstance().handle(url) //google sign in
                })
        }
    }
}
