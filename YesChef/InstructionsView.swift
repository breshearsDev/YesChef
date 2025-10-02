//
//  InstructionsView.swift
//  YesChef
//
//  Created by Breshears, Rob - CTC on 10/2/25.
//

import SwiftUI

struct InstructionsView: View {
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "birthday.cake")
                    .font(.system(size: 60))
                    .foregroundStyle(.white)
                
                Text("Instructions")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .padding()
            VStack(alignment: .leading, spacing: 20) {

                Text("1. Mix Your Dry Ingredients")
                Text("2. Add Eggs, Liquid, and Fairy Dust")
                Text("3.  Bake Until Golden Brown")
                Text("4. Frost with Pink and Green")
                Text("5. Share With Birthday Friends")
            }
            .foregroundStyle(.green)
            .fontWeight(.semibold)
            .font(.title2)
            .fontDesign(.rounded)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(color: .green, radius: 5, x: 2, y: 5)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    InstructionsView()
}
