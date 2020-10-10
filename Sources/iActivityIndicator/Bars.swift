//
//  Bars.swift
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

public struct Bars: View {
    @Binding private var isAnimating: Bool
    public let count: UInt
    public let spacing: CGFloat
    public let cornerRadius: CGFloat
    public let scaleRange: ClosedRange<Double>
    public let opacityRange: ClosedRange<Double>

    public init(animate: Binding<Bool>,
                count: UInt = 8,
                spacing: CGFloat = 8,
                cornerRadius: CGFloat = 8,
                scaleRange: ClosedRange<Double> = (0.5...1),
                opacityRange: ClosedRange<Double> = (0.25...1)) {
        self._isAnimating = animate
        self.count = count
        self.spacing = spacing
        self.cornerRadius = cornerRadius
        self.scaleRange = scaleRange
        self.opacityRange = opacityRange
    }

    public var body: some View {
        GeometryReader { geometry in
            ForEach(0..<Int(count)) { index in
                item(forIndex: index, in: geometry.size)
            }
        }
        .aspectRatio(contentMode: .fit)
    }

    private var scale: CGFloat { CGFloat(isAnimating ? scaleRange.lowerBound : scaleRange.upperBound) }
    private var opacity: Double { isAnimating ? opacityRange.lowerBound : opacityRange.upperBound }

    private func size(count: UInt, geometry: CGSize) -> CGFloat {
        (geometry.width/CGFloat(count)) - (spacing-2)
    }

    private func item(forIndex index: Int, in geometrySize: CGSize) -> some View {
        RoundedRectangle(cornerRadius: cornerRadius,  style: .continuous)
            .frame(width: size(count: count, geometry: geometrySize), height: geometrySize.height)
            .scaleEffect(x: 1, y: scale, anchor: .center)
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

extension Bars: iActivityIndicatorStyle {
    public init(animate: Binding<Bool>) {
        self.init(animate: animate,
                  count: 8,
                  spacing: 8,
                  cornerRadius: 8,
                  scaleRange: (0.5...1),
                  opacityRange: (0.25...1))
    }
}
