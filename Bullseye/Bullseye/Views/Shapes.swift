//
//  Shapes.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Circle()
                //.fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .inset(by: 10.0)
                .stroke(Color.blue, lineWidth: 20.0)
                .frame(width: 300, height: 100)
        }.background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
