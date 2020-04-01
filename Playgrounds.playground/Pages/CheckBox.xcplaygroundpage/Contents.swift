//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport
import TodoFramework

struct CheckBox<Label> : View where Label : View{
    
    @Binding private var checked: Bool
    
    private var label: ()->Label
    
    init(checked: Binding<Bool>,
         @ViewBuilder label: @escaping ()->Label
    ){
        self._checked = checked
        self.label = label
    }
    
    var body : some View{
        HStack{
            Image(systemName: checked ? "checkmark.circle" : "circle")
                .onTapGesture{
                    self.checked.toggle()
            }
            label()
        }
    }
}

struct Previews : View {
    var body: some View{
        VStack{
            CheckBox(checked: .constant(true)){
                VStack{
                    Text("task")
                    Text("task")
                    Text("task")
                }
                Image(systemName: "hand.thumbsup")
            }
            CheckBox(checked: .constant(false)){
                Text("task")
            }
        }
    }
}

PlaygroundPage.current.liveView
    = UIHostingController(rootView:Previews())
