//
//  CoffeeItem.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 14.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import SwiftUI

struct CoffeeItem: View {
    
    var coffee: Coffee
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            // 1. Сначала добавляем изображение, после кладем в VStack
            Image(coffee.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                // 2. Создаем два объекта Text, а потом кладем их в VStack
                Text(coffee.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(coffee.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 48)
            }
            
            // 3. Идем создавать CoffeeLine
        }
    }
}

struct CoffeeItem_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeItem(coffee: coffeeData[0])
    }
}
