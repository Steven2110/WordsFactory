//
//  SplashScreenView.swift
//  WordsFactory
//
//  Created by Steven Wijaya on 15.04.2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("Cool Kids On Wheels")
                        .frame(width: 375, height: 264)
                        .padding(.bottom, 16)
                    Text("WordsFactory")
                        .font(Font.custom("Rubik-Bold", size: 40))
                }
                .scaleEffect(self.size)
                .opacity(self.opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isActive.toggle()
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
