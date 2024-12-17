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
                        VStack {
                            HStack {
                                VStack {
                                    Text("Start:")
                                        .font(.headline)
                                        .foregroundColor(.green)
                                    Text(currentChallenge.startDate, style: .date)
                                        .font(.subheadline)
                                        .foregroundColor(.green)
                                }
                                .padding(.horizontal)
                                VStack {
                                    Text("End:")
                                        .font(.headline)
                                        .foregroundColor(.red)
                                    Text(currentChallenge.endDate, style: .date)
                                        .font(.subheadline)
                                        .foregroundColor(.red)
                                }
                                .padding(.horizontal)
                            }
                            .padding(.top)
                        }
                    }
                } else {
                    Text("No challenges")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                
                // Lista delle missioni
                List(viewModel.missions.prefix(5)) { mission in
                    VStack(spacing: 5) {
                        HStack {
                            Image(systemName: mission.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(mission.isCompleted ? .green : .gray)
                            
                            VStack(alignment: .leading) {
                                Text(mission.title)
                                    .font(.headline)
                                    .strikethrough(mission.isCompleted, color: .gray)
                                
                                Text(mission.description)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            .padding(.horizontal, 15)
                            
                            // Immagine associata alla missione
                            if let photo = mission.completedPhoto {
                                Image(uiImage: photo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .cornerRadius(10)
                            } else {
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.vertical, 5)
                        .onTapGesture {
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
                    } else {
                        Text("Missione non trovata.")
                    }
                }
                
                VStack {
                    if viewModel.allMissionsCompleted {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.yellow)
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
