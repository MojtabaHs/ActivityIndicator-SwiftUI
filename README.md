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

    @State var start: Bool = true

    var body: some View {
        VStack(spacing: 24) {
            HStack(spacing: 24) {
                Arcs(animate: $start)
                Arcs(animate: $start, width: 8)
                Arcs(animate: $start, count: 10)
            }

            HStack(spacing: 24) {
                Bars(animate: $start, opacityRange: 1...1)
                Bars(animate: $start, scaleRange: 1...1)
                Bars(animate: $start, count: 3)
            }

            HStack(spacing: 24) {
                Blinking(animate: $start)
                Blinking(animate: $start, count: 4)
                Blinking(animate: $start, count: 3, size: 30)
            }

            HStack(spacing: 24) {
                Classic(animate: $start)
                Classic(animate: $start)
                Classic(animate: $start)
            }

            HStack(spacing: 24) {
                RotatingShapes(animate: $start)
                RotatingShapes(animate: $start)
                RotatingShapes(animate: $start)
            }

            HStack(spacing: 24) {
                RowOfShapes(animate: $start, count: 3, opacityRange: 1...1)
                RowOfShapes(animate: $start, count: 3, scaleRange: 1...1)
                RowOfShapes(animate: $start, count: 3)
            }

            Button("toggle") {
                start.toggle()
            }
        }
        .padding()
        .aspectRatio(contentMode: .fit)
        .foregroundColor(.red)
    }
}
```



  [1]: https://i.stack.imgur.com/0WfKz.png
  [2]: https://i.stack.imgur.com/fdbbC.gif
  [3]: https://i.stack.imgur.com/LrG7U.gif
  [4]: https://i.stack.imgur.com/MvDUI.gif
