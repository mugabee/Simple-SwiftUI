//
//  ContentView.swift
//  NavigationView
//
//  Created by MUGABE RICHARD on 19/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width:100, height: 100)
                .foregroundColor(.blue)
            Text("1")
                .foregroundColor(.white)
                .frame(width: 250, height: 250, alignment: .center)
                .font(.title)
                
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CircleNumberView: View {
    Var colors: Color
    var Number: Int
    
    var body: some View {
        ZStack
    }
}
