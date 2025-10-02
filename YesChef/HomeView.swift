//
//  HomeView.swift
//  YesChef
//
//  Created by Breshears, Rob - CTC on 10/2/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image("wicked")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .cornerRadius(20)
                .opacity(0.7)
                
            HStack {
                Image(systemName: "birthday.cake")
                    .font(.system(size: 60))
                    .foregroundStyle(.green)
                    .padding()
                Text("Wicked \nBirthday \nCake")
                    .font(.system(size: 24))
                    .foregroundStyle(.green)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.pink, .white], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    HomeView()
}
