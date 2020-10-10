# ActivityIndicator

An Elegant And Customizable Pure SwiftUI Activity Indicators.


# Examples

Code | Demo
--- | ---
![Arcs-Code][11] | ![Arcs][1]
![Blinking-Code][9] | ![Blinking][2]
![RotatingShapesCode][7] | ![RotatingShapes][3]
![RowOfShapes-Code][6] | ![RowOfShaoes][4]
![Bars-Code][10] | ![Bars][5]



  [1]: https://i.stack.imgur.com/kVFyr.gif
  [2]: https://i.stack.imgur.com/J9dvw.gif
  [3]: https://i.stack.imgur.com/zxoqs.gif
  [4]: https://i.stack.imgur.com/wFRVi.gif
  [5]: https://i.stack.imgur.com/2TwUG.gif
  [6]: https://i.stack.imgur.com/gdaNb.png
  [7]: https://i.stack.imgur.com/PRD5B.png
  [8]: https://i.stack.imgur.com/DMFLk.png
  [9]: https://i.stack.imgur.com/xalsy.png
  [10]: https://i.stack.imgur.com/YHkfX.png
  [11]: https://i.stack.imgur.com/XLPvH.png
  
  ---
# The Demo Code

Just import the library and use the following code as the `ContentView`

```
import SwiftUI
import iActivityIndicator

struct ContentView: View {
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
```

# Ease of Use

Also you can use style as a modifer on the `iActivityIndicator` like:

```
HStack(spacing: 24) {
    iActivityIndicator()
        .style(.arcs())

    iActivityIndicator()
        .style(.arcs(width: 8))

    iActivityIndicator()
        .style(.arcs(count: 10))
}
```
