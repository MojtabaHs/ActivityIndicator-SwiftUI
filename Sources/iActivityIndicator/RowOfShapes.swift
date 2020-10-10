//
//  RowOfShapes.swift
//  iActivityIndicator
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 9/27/20.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/mojtabahosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//

import SwiftUI

public struct RowOfShapes: View {
    @Binding private var isAnimating: Bool
    public let count: UInt
    public let spacing: CGFloat
    public let content: AnyView
    public let scaleRange: ClosedRange<Double>
    public let opacityRange: ClosedRange<Double>

    public init<Content: View>(animate: Binding<Bool>,
                               count: UInt = 3,
                               spacing: CGFloat = 8,
                               scaleRange: ClosedRange<Double> = (0.75...1),
                               opacityRange: ClosedRange<Double> = (0.25...1),
                               content: () -> Content) {
        self._isAnimating = animate
        self.count = count
        self.content = AnyView(content())
        self.spacing = spacing
        self.scaleRange = scaleRange
        self.opacityRange = opacityRange
    }

    public init(animate: Binding<Bool>,
                count: UInt = 5,
                spacing: CGFloat = 8,
                scaleRange: ClosedRange<Double> = (0.75...1),
                opacityRange: ClosedRange<Double> = (0.25...1)) {
        self.init(animate: animate, count: count, spacing: spacing,
                  scaleRange: scaleRange,
                  opacityRange: opacityRange) {
            Circle()
        }
    }

    private func animatingScale(forIndex index: Int) -> CGFloat { CGFloat(index+1)/CGFloat(count) }

    public var body: some View {
        GeometryReader { geometry in
            ForEach(0..<Int(count)) { index in
                item(forIndex: index, in: geometry.size)
            }
            .aspectRatio(contentMode: .fit)
        }
    }

    private func size(count: UInt, geometry: CGSize) -> CGFloat {
        (geometry.width/CGFloat(count)) - (spacing-2)
    }

    private var scale: CGFloat { CGFloat(isAnimating ? scaleRange.lowerBound : scaleRange.upperBound) }
    private var opacity: Double { isAnimating ? opacityRange.lowerBound : opacityRange.upperBound }

    private func item(forIndex index: Int, in geometrySize: CGSize) -> some View {
        content
            .frame(width: size(count: count, geometry: geometrySize), height: size(count: count, geometry: geometrySize))
            .scaleEffect(scale)
            .opacity(opacity)

            .animation(
                Animation
                    .default
                    .repeatCount(isAnimating ? .max : 1, autoreverses: true)
                    .delay(Double(index) / Double(count) / 2)
            )
            .offset(x: CGFloat(index) * (size(count: count, geometry: geometrySize) + spacing))
    }
}

extension RowOfShapes: iActivityIndicatorStyle {
    public init(animate: Binding<Bool>) {
        self.init(animate: animate,
                  count: 5,
                  spacing: 8,
                  scaleRange: (0.75...1),
                  opacityRange: (0.25...1))
    }
}
