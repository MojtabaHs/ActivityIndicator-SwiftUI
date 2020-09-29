//
//  Classic.swift
//  SwiftUIPlayground
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 9/27/20.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/mojtabahosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//

import SwiftUI

public struct Classic: View {
    @Binding private var isAnimating: Bool
    public let count: UInt
    public let width: CGFloat

    public init(animate: Binding<Bool>, count: UInt = 8, width: CGFloat = 0) {
        self._isAnimating = animate
        self.count = count
        self.width = width
    }

    public var body: some View {
        GeometryReader { geometry in
            ForEach(0..<Int(count)) { index in
                item(forIndex: index, in: geometry.size)
                    .opacity(isAnimating ? 0.25 : 1)
                    .animation(
                        Animation.default
                            .repeatCount(isAnimating ? .max : 1, autoreverses: true)
                            .delay(Double(index) / Double(count) / 2)
                    )
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }

    private func item(forIndex index: Int, in geometrySize: CGSize) -> some View {
        let height: CGFloat = geometrySize.height / 3.2
        let width: CGFloat = max(self.width, height/2)
        let angle = 2 * CGFloat.pi / CGFloat(count) * CGFloat(index)
        let x = (geometrySize.width/2 - height/2) * cos(angle)
        let y = (geometrySize.height/2 - height/2) * sin(angle)
        return
            Capsule(style: .continuous)
            .frame(width: width, height: height)
            .rotationEffect(Angle(radians: Double(angle + CGFloat.pi/2)))
            .offset(x: x, y: y)
    }
}

