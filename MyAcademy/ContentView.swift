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
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 95)
                        .shadow(radius: 5)
                        .padding(.top,5)
                    VStack {
                        Text("Time for the challenges")
                            .font(.headline)
                        HStack {
                            VStack {
                                Text("Start Challenge:")
                                    .font(.headline)
                                    .foregroundColor(.green)
                                
                                    .padding(.vertical,0.5)
                                
                                Text("16/12")
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal)
                            
                            
                            VStack {
                                Text("Finish challenges:")
                                    .font(.headline)
                                    .foregroundColor(.red)
                                
                                    .padding(.vertical,0.5)
                                
                                Text("20/12")
                                    .font(.subheadline)
                                    .foregroundColor(.red)
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                
                // Lista delle missioni
                List(viewModel.missions.prefix(5)) { mission in
                    VStack{
                        // Titolo e descrizione della missione
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
                            .padding(.horizontal, 20)
                            
                            // Immagine associata alla missione
                            if let photo = mission.completedPhoto {
                                Image(uiImage: photo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .cornerRadius(10)
                            } else {
                                // Mostra immagine di default
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.vertical, 5)
                    .onTapGesture {
                        selectedMission = mission
                        showingMissionModal = true
                    }
                }
                .listStyle(.insetGrouped)
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
                .padding(.bottom, 40)
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
        }
    } //end body
} // end struct



#Preview {
    ContentView()
}

