import SwiftUI
import PlaygroundSupport
import TodoFramework

struct Previews : View {
    var body: some View{
        VStack{
            ContentView()
        }
    }
}

PlaygroundPage.current.liveView
    = UIHostingController(rootView:Previews())
