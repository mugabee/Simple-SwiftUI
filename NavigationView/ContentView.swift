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
       
            VStack {
                
                CircleNumberView(colors: .blue, Number: 2)
                    .navigationTitle("Blue two")
                    .offset(y: -60)
                NavigationLink(
                    destination: YellowView(),
                    label: {
                        Text("Next Screen")
                    })
            
            
        }
        
    }
}
struct YellowView: View {
    var body: some View {
       
            VStack {
                
                CircleNumberView(colors: .yellow, Number: 3)
                    .navigationTitle("Yellow Three two")
                    .offset(y: -60)
                Text("final Page")
                    .font(.system(size: 70, weight: .bold))
            
            
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
