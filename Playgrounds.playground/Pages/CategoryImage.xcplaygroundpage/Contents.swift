import SwiftUI
import PlaygroundSupport
import TodoFramework

struct Previews : View {
    var body: some View{
        VStack{
            CategoryImage()
        }
    }
}

PlaygroundPage.current.liveView
    = UIHostingController(rootView:Previews())
