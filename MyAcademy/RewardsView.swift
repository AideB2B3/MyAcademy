//
//  RewardsView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI

struct RewardsView: View {
    // Variabile di stato per tracciare il mese selezionato
    @State private var selectedMonth: String? = nil
    
    var body: some View {
        NavigationStack {
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
                    LazyVGrid(columns: [
                        GridItem(.fixed(120)),
                        GridItem(.fixed(120)),
                        GridItem(.fixed(120))
                    ], spacing: 10) {
                        ForEach(months, id: \.self) { month in
                            NavigationLink(destination: navigateToView(for: month)) {
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
                            .buttonStyle(.plain)
                        }
                    }
                } // fine Vstack delle colonne.
                // Navigazione condizionale
                .navigationDestination(for: String.self) { month in
                    navigateToView(for: month)
                }
            }
            
        }
    }
    
    // Lista dei mesi
    let months = ["October", "November", "December", "January", "February", "March", "April", "May", "June"]
    
    @ViewBuilder
    func navigateToView(for month: String) -> some View {
        switch month {
        case "October": OctoberView()
        case "November": NovemberView()
        case "December": DecemberView()
        case "January": JanuaryView()
        case "February": FebruaryView()
        case "March": MarchView()
        case "April": AprilView()
        case "May": MayView()
        case "June": JuneView()
        default: Text("View not available")
        }
    }
}//end structView

#Preview {
    RewardsView()
}
