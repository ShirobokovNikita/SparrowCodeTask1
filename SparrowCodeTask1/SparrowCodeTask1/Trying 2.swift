//
//  Trying 2.swift
//  SparrowCodeTask1
//
//  Created by Nikita Shirobokov on 01.10.23.
//

import SwiftUI

struct Trying2: View {
    
    var body: some View {
        ZStack() {
            TabView() {
                // Первый экран
                VStack {
                    Spacer()
                    
                    // Контент для первого экрана здесь
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 50)
                    
                }
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Первый")
                }
            }
            ScrollView {
                // Контент, который можно прокручивать
                VStack {
                    ForEach(1...50, id: \.self) { index in
                        Text("Элемент \(index)")
                    }
                } .padding(.bottom)
                
            }
        }
    }
}


#Preview {
    Trying2()
}
