//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 2/9/26.
//


import SwiftUI
import ThemeKit


struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20.0)
            
            if let fractionCompleted = configuration.fractionCompleted {
                GeometryReader { geometry in
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(theme.mainColor)
                        .frame(width: geometry.size.width * CGFloat(fractionCompleted), height: 20.0)
                }
            }
        }
    }
}
