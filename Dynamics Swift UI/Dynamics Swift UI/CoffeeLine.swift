//
//  CoffeeLine.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 14.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import SwiftUI

struct CoffeeLine: View {
    
    // 1. Сперва определяем проперти
    var categoryName: String
    var coffees: [Coffee]
    
    var body: some View {
        // 2. Делаем контейнер с заголовком
        VStack(alignment: .leading) {
            Text(categoryName).font(.largeTitle)
            
            // 3. Создаем скролл вью с элементами внутри.
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(coffees, id: \.id) { coffee in
                        // 4. Добавляем link после создания Coffee Detail
                       NavigationLink(destination: CoffeeDetail(coffee: coffee)) {
                            CoffeeItem(coffee: coffee)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

struct CoffeeLine_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeLine(categoryName: "HOT DRINKS", coffees: coffeeData)
    }
}
