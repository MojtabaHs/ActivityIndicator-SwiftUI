//
//  iActivityIndicator.swift
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

public struct iActivityIndicator: View {

    @State var animate: Bool = false
    private let style: AStyle

    public var body: some View {
        Group {
            switch style {
            case let .arcs(count, width, spacing):
                Arcs(
                    animate: $animate,
                    count: count,
                    width: width,
                    spacing: spacing
                )
            case let .bars(count, spacing, cornerRadius, scaleRange, opacityRange):
                Bars(
                    animate: $animate,
                    count: count,
                    spacing: spacing,
                    cornerRadius: cornerRadius,
                    scaleRange: scaleRange,
                    opacityRange: opacityRange
                )
            case let .blinking(count, size):
                Blinking(
                    animate: $animate,
                    count: count,
                    size: size
                )
            case let .classic(count, width):
                Classic(
                    animate: $animate,
                    count: count,
                    width: width
                )
            case let .rotatingShapes(count, size, content):
                RotatingShapes(
                    animate: $animate,
                    count: count,
                    size: size,
                    content: { content.frame(width: size, height: size) }
                )
            case let .rowOfShapes(count, spacing, scaleRange, opacityRange, content):
                RowOfShapes(
                    animate: $animate,
                    count: count,
                    spacing: spacing,
                    scaleRange: scaleRange,
                    opacityRange: opacityRange,
                    content: { content }
                )
            case let .rowOfCircle(count, spacing, scaleRange, opacityRange):
                RowOfShapes(
                    animate: $animate,
                    count: count,
                    spacing: spacing,
                    scaleRange: scaleRange,
                    opacityRange: opacityRange
                )
            }
        }
            .onAppear { animate = true }
            .onDisappear { animate = false }
            .aspectRatio(contentMode: .fit)
    }

    public init(style: AStyle = .classic()) {
        self.style = style
    }
}

public enum AStyle {
    case arcs(count: UInt = 3, width: CGFloat = 2, spacing: CGFloat = 1)
    case bars(count: UInt = 8,
              spacing: CGFloat = 8,
              cornerRadius: CGFloat = 8,
              scaleRange: ClosedRange<Double> = (0.5...1),
              opacityRange: ClosedRange<Double> = (0.25...1))
    case blinking(count: UInt = 8, size: CGFloat = 16)
    case classic(count: UInt = 8, width: CGFloat = 0)
    case rotatingShapes(count: UInt = 6, size: CGFloat = 10, content: AnyView = AnyView(Circle()))
    case rowOfShapes(count: UInt = 5,
                     spacing: CGFloat = 8,
                     scaleRange: ClosedRange<Double> = (0.75...1),
                     opacityRange: ClosedRange<Double> = (0.25...1),
                     content: AnyView = AnyView(Circle()))
    case rowOfCircle(count: UInt = 5,
                     spacing: CGFloat = 8,
                     scaleRange: ClosedRange<Double> = (0.75...1),
                     opacityRange: ClosedRange<Double> = (0.25...1))
}

