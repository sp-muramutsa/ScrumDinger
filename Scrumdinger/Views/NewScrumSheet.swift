//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 3/30/26.
//

import SwiftUI

struct NewScrumSheet: View {
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}

#Preview {
    NewScrumSheet()
}
