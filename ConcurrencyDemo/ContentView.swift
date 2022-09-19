//
//  ContentView.swift
//  ConcurrencyDemo
//
//  Created by JOYNAL ABEDIN on 19/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            doSomething()
        } label: {
            Text("Do Something")
                .modifier(StandardTextTitle(backgroundColor: .red))
        }

    }
    func doSomething(){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Custom Modifier for Text
struct StandardTextTitle: ViewModifier {
    
    @State var backgroundColor: Color? = .white
    @State var fontName: String? = "Open Sans"
    @State var fontSize: CGFloat? = 18
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName!, size: fontSize!))
            .padding(5)
            .background(backgroundColor)
            .border(Color.gray)
            .shadow(color: Color.black, radius: 6, x: 0, y: 5)
            .lineLimit(1)
    }
}
