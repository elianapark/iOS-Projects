//
//  LazyView.swift
//  AdoptMe
//
//  Created by Seoa Han on 12/30/20.
//

import Foundation
import SwiftUI

struct LazyView<Content: View>: View {
    
    var content: () -> Content
    
    var body: some View {
        self.content()
    }
    
}
