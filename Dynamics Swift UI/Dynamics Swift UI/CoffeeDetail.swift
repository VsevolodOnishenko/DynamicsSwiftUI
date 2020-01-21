//
//  CoffeeDetail.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 14.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import SwiftUI

struct CoffeeDetail: View {
    
    // 1. Создаем проперти
    var coffee: Coffee
    
    var body: some View {
        
        // 6. Помещаем все в лист для скролла
        List {
            // 3. Кладем изображение в ZStack
            ZStack(alignment: .bottom) {
                // 2. Создаем изображение
                Image(coffee.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                // 4. После добавления изображения в zstack создаем темную область
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.4)
                    .blur(radius: 8)
                
                // 5. Добавляем название
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(coffee.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            
            // 8. Создаем описание
            VStack(alignment: .leading) {
                Text(coffee.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }
                .padding(.top)
                .padding(.bottom)
            }
            .padding(.top)
            .padding(.bottom)
        }
        .navigationBarTitle(Text(coffee.name))
        .environment(\.colorScheme, .dark)
    }
}

// 9. Добавляем кнопку вниз
struct OrderButton: View {
    
    @State private var showAlert: Bool = false
    
    var body: some View {
        Button(action: {
            self.showAlert = !self.showAlert
        }) {
            Text("ORDER ME")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 50)
        .background(Color.blue)
        .cornerRadius(10)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Congrats!!!"), message: Text("You are just ordered coffee"))
        }
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail(coffee: coffeeData[5])
    }
}
