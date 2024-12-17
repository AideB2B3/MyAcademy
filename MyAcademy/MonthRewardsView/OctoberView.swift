//
//  OctoberView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 16/12/24.
//

import SwiftUI

struct OctoberView: View {
    
    @StateObject private var viewModel = MissionViewModel()
    
    // Liste delle missioni di Ottobre
    let octoberWeeks: [[Mission]] = [
        octoberWeek1Missions,
        octoberWeek2Missions,
        octoberWeek3Missions,
        octoberWeek4Missions
    ]
    
    var body: some View {
        VStack {
            // Sezione Medaglie
            HStack(spacing: 20) {
                ForEach(0..<4, id: \.self) { index in
                    Image(systemName: viewModel.isWeekCompleted(missions: octoberWeeks[index]) ? "medal.fill" : "medal")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(viewModel.isWeekCompleted(missions: octoberWeeks[index]) ? .yellow : .gray)
                }
            }
            .padding(.top, 20)
            
            Divider()
            
            // Sezione scrollabile per le missioni
            ScrollView {
                VStack {
                    ForEach(Array(octoberWeeks.enumerated()), id: \.offset) { index, weekMissions in
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Settimana \(index + 1)")
                                .font(.headline)
                                .padding(.vertical, 5)
                            
                            // Lista missioni per settimana
                            ForEach(weekMissions) { mission in
                                HStack {
                                    Image(systemName: mission.isCompleted ? "checkmark.circle.fill" : "circle")
                                        .foregroundColor(mission.isCompleted ? .green : .gray)
                                    
                                    VStack(alignment: .leading) {
                                        Text(mission.title)
                                            .font(.subheadline)
                                            .strikethrough(mission.isCompleted, color: .gray)
                                        Text(mission.description)
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                    Spacer()
                                    
                                    // Immagine bloccata
                                    if let photo = mission.completedPhoto {
                                        Image(uiImage: photo)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                            .cornerRadius(8)
                                    } else {
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                            .cornerRadius(8)
                                    }
                                }
                                Divider()
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .padding(.horizontal)
        .navigationTitle("Missioni di Ottobre")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    OctoberView()
}
