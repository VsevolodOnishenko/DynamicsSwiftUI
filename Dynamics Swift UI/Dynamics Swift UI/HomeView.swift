//
//  HomeView.swift
//  Dynamics Swift UI
//
//  Created by Vsevolod Onishchenko on 09.12.2019.
//  Copyright © 2019 oneactionapp. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    // 1. Определяем проперти
    var categories: [String: [Coffee]] {
        .init(grouping: coffeeData, by: { $0.category.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \.self) { key in
                CoffeeLine(categoryName: "\(key) DRINKS", coffees: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle("COFFEE")
            .environment(\.colorScheme, .dark)
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
