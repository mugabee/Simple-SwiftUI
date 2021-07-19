//
//  ContentView.swift
//  LoadingView
//
//  Created by MUGABE RICHARD on 19/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            Text("THis Example Page")
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding()
            
        }
    }
    
    func startFakeNetworkcall() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
            { }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
