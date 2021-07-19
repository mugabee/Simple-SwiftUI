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
            VStack {
                
                CircleNumberView(colors: .red, Number: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                NavigationLink(
                    destination: BlueView(),
                    label: {
                        Text("Next Screen")
                    })
            }
            
        }
        
    }
}
struct BlueView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                CircleNumberView(colors: .red, Number: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("Next Screen")
                    })
            }
            
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
