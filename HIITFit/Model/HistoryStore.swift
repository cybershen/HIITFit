//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Назар Жиленко on 19.12.2022.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        createDevData()
    }
}

