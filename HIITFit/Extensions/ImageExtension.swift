//
//  ImageExtension.swift
//  HIITFit
//
//  Created by Назар Жиленко on 10.12.2022.
//

import Foundation
import SwiftUI

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}
