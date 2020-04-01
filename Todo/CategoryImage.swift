//
//  CategoryImage.swift
//  Todo
//
//  Created by Tomoharu Kawata on 2020/03/17.
//  Copyright © 2020 cdk.com. All rights reserved.
//

import SwiftUI

public struct CategoryImage: View {
    public init() {}
    public var body: some View {
        //SF Symbols
        Image(systemName:"tortoise.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width:30, height: 30)
            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
            .cornerRadius(6.0)
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage()
    }
}
