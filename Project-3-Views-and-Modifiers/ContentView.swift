//
//  ContentView.swift
//  Project-3-Views-and-Modifiers
//
//  Created by Baris Karalar on 10.06.2021.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding(30)
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}


extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
    
    func waterMarked(with text: String) -> some View {
        self.modifier(WaterMark(text: text))
    }
    
    func prominentTitle() -> some View {
        self.modifier(ProminentTitle())
    }
    
}



struct ContentView: View {
    
    
    
    var body: some View {
        
        VStack {
            Text("helllo")
                .modifier(Title())
            
            Text("aadsf afdasafds")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200)
                .waterMarked(with: "baro karo")
            
            Text("Challenge 1")
                .prominentTitle()
            
        }
        
        
        //        What is behind the main SwiftUI view?
        
        //        Text("Hello, world!")
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(Color.red)
        //            .edgesIgnoringSafeArea(.all)
        
        
        
        //        Why modifier order matters
        
        //        Button("Hellooo") {
        //            print(type(of: self.body))
        //        }
        //        .background(Color.red)
        //        .frame(width: 200, height: 200)
        //        .background(Color.green)
        
        //        Text("hello world")
        //            .padding()
        //            .background(Color.red)
        //            .padding()
        //            .background(Color.green)
        //            .padding()
        //            .background(Color.orange)
        //            .padding()
        //            .background(Color.gray)
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
