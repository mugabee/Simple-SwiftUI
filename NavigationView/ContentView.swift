//
//  ContentView.swift
//  NavigationView
//
//  Created by MUGABE RICHARD on 19/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CircleNumberView(colors: .blue, Number: 1)
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CircleNumberView: View {
    var colors: Color
    var Number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(colors)
            Text("\(Number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
            
        }
    }
}
