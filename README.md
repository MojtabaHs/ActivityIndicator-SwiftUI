# ActivityIndicator

An Elegant And Customizable Pure SwiftUI Activity Indicators.

[![Arcs][2]][2]
[![Bards][3]][3]
[![Blinkers][4]][4]


# Demo

Just import the library and use the following code as the `ContentView`

```
import SwiftUI
import ActivityIndicator

struct ContentView: View {
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
```



  [1]: https://i.stack.imgur.com/0WfKz.png
  [2]: https://i.stack.imgur.com/fdbbC.gif
  [3]: https://i.stack.imgur.com/LrG7U.gif
  [4]: https://i.stack.imgur.com/MvDUI.gif
