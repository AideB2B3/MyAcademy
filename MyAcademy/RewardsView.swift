//
//  RewardsView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI

struct RewardsView: View {
    var body: some View {
        
        ZStack {
            VStack {
                Text("Final Rewards")
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.yellow)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gray.opacity(0.2))
                    .shadow(radius: 5)
            )
            .frame(width: 120, height: 120)
            .offset(y: -250)
            
            VStack {
                // Grid layout
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 5) {
                    ForEach(months, id: \ .self) { month in
                        VStack {
                            Text(month)
                                .font(.system(size: 13, weight: .bold, design: .rounded))
                                .foregroundColor(.white)

                            Image(systemName: "star")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.yellow)
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.gray.opacity(0.2))
                                .shadow(radius: 5)
                        )
                        .frame(width: 120, height: 120)
                    }
                }
                .padding()
            }
        }
    }

    // List of months
    let months = ["Ottobre", "Novembre", "Dicembre", "Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno"]
}

#Preview {
    RewardsView()
}
