//
//  IngredientsView.swift
//  YesChef
//
//  Created by Breshears, Rob - CTC on 10/2/25.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var flour = 2
    @State private var sugar = 6
    @State private var eggs = 4
    @State private var magic = 6
    @State private var frosting = 8
    @State private var count = 2
    
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "birthday.cake")
                    .font(.system(size: 60))
                    .foregroundStyle(.white)

                Text("Ingredients")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding()
            VStack(alignment: .leading, spacing: 20) {
                
                Text("\(flour)C Flour")
                Text("\(sugar)C Sugar")
                Text("\(eggs) Eggs")
                Text("\(magic)C Magic")
                Text("\(frosting)C Frosting")
                Text("Makes \(count) Cakes")
            }
            .foregroundStyle(.green)
            .fontWeight(.semibold)
            .font(.title2)
            .fontDesign(.rounded)
            
            HStack {
                Button("x1") {
                    flour = 2
                    sugar = 6
                    eggs = 4
                    magic = 6
                    frosting = 8
                    count = 2
                }
                .buttonStyle(.borderedProminent)
                
                Button("x2") {
                    double(multipler: 2)
                }
                .buttonStyle(.borderedProminent)
                .disabled(count > 2)
                
                Button("x 3") {
                    double(multipler: 3)
                }
                .buttonStyle(.borderedProminent)
                .disabled(count > 3)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .white], startPoint: .top, endPoint: .bottom))
    }
    
    func double(multipler: Int) {
        flour *= multipler
        sugar *= multipler
        eggs *= multipler
        magic *= multipler
        frosting *= multipler
        count *= multipler
        
        
    }
}

#Preview {
    IngredientsView()
}
