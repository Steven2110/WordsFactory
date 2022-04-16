//
//  IntroScreenView.swift
//  WordsFactory
//
//  Created by Steven Wijaya on 16.04.2022.
//

import SwiftUI

struct IntroScreenView: View {
    let images: [String] = ["Cool Kids Long Distance Relationship", "Cool Kids Staying Home", "Cool Kids High Tech"]
    let titles: [String] = ["Learn anytime\nand anywhere", "Find a course\nfor you", "Improve your skills"]
    @State var currentPage = 1
    var body: some View {
        IntroView(image: images[currentPage - 1], title: titles[currentPage - 1], currentPage: $currentPage)
            .animation(.linear, value: 0.5)
    }
}

struct IntroScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreenView()
    }
}
