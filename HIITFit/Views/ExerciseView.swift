//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Назар Жиленко on 07.12.2022.
//

import SwiftUI

struct ExerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    
    var body: some View {
        VStack {
            HeaderView(exerciseName: exerciseNames[index])
            Text("Video Player")
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("History button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}

struct ExtractedView: View {
    var body: some View {
        ExerciseView(index: 0)
    }
}
