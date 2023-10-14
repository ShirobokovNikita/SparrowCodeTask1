//
//  SparrowVariant.swift
//  SparrowCodeTask1
//
//  Created by Nikita Shirobokov on 14.10.23.
//

import SwiftUI

struct SparrowVariant: View {
    var body: some View {
        TabView {
            ScrollingView()
                .safeAreaInset(edge: .bottom, content: {
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(height: 50)
                })
                .tabItem { Label("First", systemImage: "star.fill") }
        }
    }
}

struct ScrollingView: View {
    var body: some View {
        ScrollView {
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 1000)
        }
    }
}

#Preview {
    SparrowVariant()
}
