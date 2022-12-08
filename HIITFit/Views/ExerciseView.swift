//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Назар Жиленко on 07.12.2022.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["squat", "burpee", "step-up", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    let interval: TimeInterval = 30
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: videoNames[index], withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url)).frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(videoNames[index]).mp4")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer).font(.system(size: 90))
                Button("Start/Done") {}
                    .font(.title3)
                    .padding()
                RatingView().padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
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
