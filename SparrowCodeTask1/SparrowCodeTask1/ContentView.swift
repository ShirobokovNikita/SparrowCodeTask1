//
//  ContentView.swift
//  SparrowCodeTask1
//
//  Created by Nikita Shirobokov on 01.10.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let height: CGFloat = 50
        let opacity = 1.0
        VStack {
            TabView {
                ZStack {
                    ScrollView {
                            VStack {
                                ForEach(1..<80) { index in
                                    Text("\(index)")
                                        .frame(maxWidth: .infinity)
                                }
                            }
                            .padding(.bottom, height)
                        }
                    .contentMargins(.bottom, height, for: .scrollIndicators)
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: height)
                            .opacity(opacity)
                    }
                
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
