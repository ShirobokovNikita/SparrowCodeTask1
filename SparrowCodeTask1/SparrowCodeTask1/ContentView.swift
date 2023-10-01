//
//  ContentView.swift
//  SparrowCodeTask1
//
//  Created by Nikita Shirobokov on 01.10.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                ZStack {
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 50)
                            .zIndex(-1)
                    }
                ScrollView {
                        VStack {
                            ForEach(1..<80) { index in
                                Text("\(index)")
//                                    .padding(.bottom, 10) // Добавляем отступ снизу для текста
                                    .frame(maxWidth: .infinity)
                            }
                        }
                        .padding(.bottom, 50) // Оставляем место для красного прямоугольника
                    }
                .contentMargins(.bottom, 50, for: .scrollIndicators)
                }
                .tabItem {
                    Text("Button 1")
                    Image(systemName: "1.circle")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
