//
//  ContentView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = MissionViewModel()
    @State private var selectedMission: Mission?
    @State private var showingMissionModal = false
    
    var body: some View {
        NavigationStack {
            VStack {
                // Settaggio delle date
                if let currentChallenge = viewModel.currentChallenge {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 75)
                            .shadow(radius: 5)
                            .padding(.top, 15)
                            .accessibilityHidden(true) // Nasconde elemento decorativo
                        
                        VStack {
                            HStack {
                                VStack {
                                    Text("Start:")
                                        .font(.headline)
                                        .foregroundColor(.green)
                                        .accessibilityLabel("Inizio della sfida")
                                    
                                    Text(currentChallenge.startDate, style: .date)
                                        .font(.subheadline)
                                        .foregroundColor(.green)
                                        .accessibilityLabel("Data di inizio: \(currentChallenge.startDate, style: .date)")
                                }
                                .padding(.horizontal)
                                
                                VStack {
                                    Text("End:")
                                        .font(.headline)
                                        .foregroundColor(.red)
                                        .accessibilityLabel("Fine della sfida")
                                    
                                    Text(currentChallenge.endDate, style: .date)
                                        .font(.subheadline)
                                        .foregroundColor(.red)
                                        .accessibilityLabel("Data di fine: \(currentChallenge.endDate, style: .date)")
                                }
                                .padding(.horizontal)
                            }
                        }
                        .accessibilityElement(children: .combine) // Combina i testi
                    }
                } else {
                    Text("No challenges")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .accessibilityLabel("Nessuna sfida attualmente")
                }
                
                // Lista delle missioni
                List(viewModel.missions.prefix(5)) { mission in
                    VStack(spacing: 5) {
                        HStack {
                            Image(systemName: mission.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(mission.isCompleted ? .green : .gray)
                                .accessibilityLabel(mission.isCompleted ? "Missione completata" : "Missione non completata")
                            
                            VStack(alignment: .leading) {
                                Text(mission.title)
                                    .font(.headline)
                                    .strikethrough(mission.isCompleted, color: .gray)
                                    .accessibilityLabel(mission.isCompleted
                                        ? "Missione completata: \(mission.title)"
                                        : "Missione non completata: \(mission.title)")
                                    .accessibilityAddTraits(mission.isCompleted ? .isHeader : [])
                                
                                Text(mission.description)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .accessibilityLabel("Descrizione: \(mission.description)")
                            }
                            .padding(.horizontal, 15)
                            
                            if let photo = mission.completedPhoto {
                                Image(uiImage: photo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .cornerRadius(10)
                                    .accessibilityLabel("Foto completata della missione")
                            } else {
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                                    .accessibilityLabel("Nessuna foto")
                            }
                        }
                        .padding(.vertical, 5)
                        .onTapGesture {
                            selectedMission = mission
                            showingMissionModal = true
                        }
                        .accessibilityAction(named: "Seleziona missione") {
                            selectedMission = mission
                            showingMissionModal = true
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .frame(maxHeight: .infinity)
                .sheet(isPresented: $showingMissionModal) {
                    if let mission = selectedMission {
                        MissionDetailView(
                            mission: mission,
                            onComplete: { photo in
                                viewModel.completeMission(id: mission.id, with: photo)
                                showingMissionModal = false
                            }
                        )
                        .accessibilityElement(children: .contain)
                        .accessibilityLabel("Dettagli della missione: \(selectedMission?.title ?? "Missione sconosciuta")")
                    } else {
                        Text("Missione non trovata.")
                            .accessibilityLabel("Missione non trovata")
                    }
                }
                
                VStack {
                    if viewModel.allMissionsCompleted {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.yellow)
                            .accessibilityLabel("Tutte le missioni sono completate")
                    } else {
                        Image(systemName: "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.yellow)
                            .accessibilityLabel("Ci sono missioni incomplete")
                    }
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("MyAcademy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RewardsView()) {
                        Image(systemName: "medal")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .accessibilityLabel("Premi")
                            .accessibilityHint("Vai alla sezione premi")
                    }
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    ContentView()
}
