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
                iActivityIndicator(style: .arcs())
                iActivityIndicator(style: .arcs(width: 8))
                iActivityIndicator(style: .arcs(count: 10))
            }

            HStack(spacing: 24) {
                iActivityIndicator(style: .bars(opacityRange: 1...1))
                iActivityIndicator(style: .bars(scaleRange: 1...1))
                iActivityIndicator(style: .bars(count: 3))
            }

            HStack(spacing: 24) {
                iActivityIndicator(style: .blinking())
                iActivityIndicator(style: .blinking(count: 4))
                iActivityIndicator(style: .blinking(count: 3, size: 50))
            }

            HStack(spacing: 24) {
                iActivityIndicator() // The Default
                iActivityIndicator(style: .classic(count: 13, width: 2))
                iActivityIndicator(style: .classic(count: 3, width: 50))
            }

            HStack(spacing: 24) {
                iActivityIndicator(style: .rotatingShapes())
                iActivityIndicator(style: .rotatingShapes(count: 3, size: 30))
                iActivityIndicator(style: .rotatingShapes(content: AnyView(Text("🎃").fixedSize())))
            }

            HStack(alignment: .center, spacing: 24) {
                iActivityIndicator(style: .rowOfShapes())
                iActivityIndicator(style: .rowOfShapes(count: 1, opacityRange: 0...1))
                iActivityIndicator(style: .rowOfShapes(count: 3, scaleRange: 0.1...1))
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


