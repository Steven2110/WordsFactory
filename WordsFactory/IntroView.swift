//
//  IntroView.swift
//  WordsFactory
//
//  Created by Steven Wijaya on 16.04.2022.
//

import SwiftUI

struct IntroView: View {
    var image: String
    var title: String
    @Binding var currentPage : Int
    var body: some View {
        VStack {
            Button {
                // Go to sign up view
            } label: {
                Text("Skip")
                    .font(Font.custom("Rubik-Medium", size: 14))
                    .foregroundColor(Color(red: 0.471, green: 0.456, blue: 0.427))
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 16)
            .padding(.top)
            Spacer()
            // Center view
            Group {
                Image(image)
                    .padding(.bottom, 16)
                Text(title)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Rubik-Medium", size: 24))
                    .frame(width: 341, height: 72)
                    .padding(.bottom, 8)
                Text("Quarantine is the perfect time to spend your \nday learning something new, from anywhere!")
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Rubik-Regular", size: 14))
                    .foregroundColor(Color(red: 0.471, green: 0.456, blue: 0.427))
                    .frame(width: 341, height: 64)
                    .padding(.bottom, 16)
            }
            // Page indicator
            HStack {
                Button {
                    currentPage = 1
                } label: {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: currentPage == 1 ? 16 : 6, height: 6)
                        .foregroundColor(currentPage == 1 ? Color(red: 0.397, green: 0.666, blue: 0.917) : Color(red: 0.835, green: 0.831, blue: 0.831))
                        .animation(Animation.linear(duration: 0.75), value: currentPage)
                }
                Button {
                    currentPage = 2
                } label: {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: currentPage == 2 ? 16 : 6, height: 6)
                        .foregroundColor(currentPage == 2 ? Color(red: 0.397, green: 0.666, blue: 0.917) : Color(red: 0.835, green: 0.831, blue: 0.831))
                        .animation(Animation.linear(duration: 0.75), value: currentPage)
                }
                Button {
                    currentPage = 3
                } label: {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: currentPage == 3 ? 16 : 6, height: 6)
                        .foregroundColor(currentPage == 3 ? Color(red: 0.397, green: 0.666, blue: 0.917) : Color(red: 0.835, green: 0.831, blue: 0.831))
                        .animation(Animation.linear(duration: 0.75), value: currentPage)
                }
            }
            .padding(.bottom, 72)
            // Next button
            Button {
                withAnimation(Animation.linear(duration: 0.75)) {
                    if currentPage < 3 {
                        currentPage += 1
                    } else {
                        // Go to sign up view
                    }
                }
            } label: {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 0.892, green: 0.338, blue: 0.163))
                    .frame(width: 311, height: 56)
                    .overlay(
                        Text("Next")
                            .font(Font.custom("Rubik-Medium", size: 16))
                            .foregroundColor(.white)
                    )
            }
            Spacer()
        }
    }
}

//struct IntroView_Previews: PreviewProvider {
//    static var previews: some View {
//        IntroView()
//    }
//}
