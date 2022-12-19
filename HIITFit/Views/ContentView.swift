//
//  ContentView.swift
//  HIITFit
//
//  Created by Назар Жиленко on 06.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0 ..< Exercise.exercises.count, id: \.self) { index in
              ExerciseView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
