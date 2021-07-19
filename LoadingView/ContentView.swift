//
//  ContentView.swift
//  LoadingView
//
//  Created by MUGABE RICHARD on 19/07/2021.
//

import SwiftUI



struct ContentView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            Text("THis Example Page")
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding()
            
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(3)
                
            }
            
            
        }
        .onAppear { startFakeNetworkcall() }
    }
    
    func startFakeNetworkcall() {
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
            {
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
