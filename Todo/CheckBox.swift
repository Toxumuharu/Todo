//
//  CheckBox.swift
//  Todo
//
//  Created by Tomoharu Kawata on 2020/04/01.
//  Copyright © 2020 cdk.com. All rights reserved.
//

import SwiftUI

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
