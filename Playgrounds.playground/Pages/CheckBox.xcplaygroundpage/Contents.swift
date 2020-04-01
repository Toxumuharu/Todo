//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport
import TodoFramework

struct CheckBox : View {
    @State var checked: Bool = false
    var body : some View{
        VStack{
            Toggle(isOn: $checked){
                Text("チェックボックス")
            }
            if checked {
                Text("Now it's ON!!")
            }
        }
    }
}

struct Previews : View {
    var body: some View{
            CheckBox()
    }
}

PlaygroundPage.current.liveView
    = UIHostingController(rootView:Previews())
