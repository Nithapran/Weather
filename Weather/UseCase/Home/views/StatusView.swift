//
//  StatusView.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-19.
//

import Foundation
import SwiftUI

struct StatusView: View {
    @Binding var state: ApiCallStates
    var body: some View {
        switch state {
        case .loading:
            Text("Loading")
                .foregroundColor(.blue)
                .font(Font.system(size: 12))
        case .error:
            Text("Updating failed")
                .foregroundColor(.red)
                .font(Font.system(size: 12))
        default:
            Text("Updated a moment ago")
                .foregroundColor(.green)
                .font(Font.system(size: 12))
        }
    }
}



