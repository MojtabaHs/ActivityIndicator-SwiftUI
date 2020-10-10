//
//  UsageView.swift
//  Demo
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 9/29/20.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/mojtabahosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//

import SwiftUI

struct UsageView: View {
    var body: some View {
        VStack(spacing: 24) {

            HStack(spacing: 24) {
                ActivityIndicator(style: .arcs())
                ActivityIndicator(style: .arcs(width: 8))
                ActivityIndicator(style: .arcs(count: 10))
            }

            HStack(spacing: 24) {
                ActivityIndicator(style: .bars(opacityRange: 1...1))
                ActivityIndicator(style: .bars(scaleRange: 1...1))
                ActivityIndicator(style: .bars(count: 3))
            }

            HStack(spacing: 24) {
                ActivityIndicator(style: .blinking())
                ActivityIndicator(style: .blinking(count: 4))
                ActivityIndicator(style: .blinking(count: 3, size: 50))
            }

            HStack(spacing: 24) {
                ActivityIndicator() // The Default
                ActivityIndicator(style: .classic(count: 13, width: 2))
                ActivityIndicator(style: .classic(count: 3, width: 50))
            }

            HStack(spacing: 24) {
                ActivityIndicator(style: .rotatingShapes())
                ActivityIndicator(style: .rotatingShapes(count: 3, size: 30))
                ActivityIndicator(style: .rotatingShapes(content: AnyView(Text("🎃").fixedSize())))
            }

            HStack(alignment: .center, spacing: 24) {
                ActivityIndicator(style: .rowOfShapes())
                ActivityIndicator(style: .rowOfShapes(count: 1, opacityRange: 0...1))
                ActivityIndicator(style: .rowOfShapes(count: 3, scaleRange: 0.1...1))
            }
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct UsageView_Previews: PreviewProvider {
    static var previews: some View {
        UsageView()
    }
}


