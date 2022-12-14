//
//  SuccessView.swift
//  HIITFit
//
//  Created by Назар Жиленко on 10.12.2022.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("""
                    Good job completing all four exercises!
                    Remember tommorov's another day.
                    So eat well and get some rest!
                   """)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            }
            VStack {
                Spacer()
                Button("Continue") { }
                    .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
