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
                    ScrollView {
                            VStack {
                                ForEach(1..<80) { index in
                                    Text("\(index)")
                                        .frame(maxWidth: .infinity)
                                }
                            }
                        }
                    .contentMargins(.bottom, 50, for: .scrollIndicators)
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 50)
                            .opacity(0.8)
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
