//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 2/5/26.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}

