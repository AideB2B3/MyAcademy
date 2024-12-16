//
//  ViewModel.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI
import Combine

struct Mission: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let startDate: Date
    let endDate: Date
    var isCompleted: Bool
    var completedPhoto: UIImage?

    var isActive: Bool {
        let now = Date()
        return now >= startDate && now <= endDate
    }
}

import Foundation

class MissionViewModel: ObservableObject {
    @Published var missions: [Mission] = []
    @Published var currentChallenge: Mission?

    init() {
        loadMissions()
        selectCurrentChallenge()
    }

    func loadMissions() {
        let calendar = Calendar.current
        let now = Date()
        
        var allMissions: [Mission] = []

        // Genera missioni per ogni settimana dell'anno
        let startOfYear = calendar.date(from: Calendar.current.dateComponents([.year], from: now))!
        let daysInYear = calendar.range(of: .day, in: .year, for: startOfYear)!.count

        for dayOffset in 0..<daysInYear {
            // Calcola la data del giorno corrente dell'anno
            let dayOfYear = calendar.date(byAdding: .day, value: dayOffset, to: startOfYear)!
            
            // Se il giorno è lunedì, crea 5 missioni per quella settimana (dal lunedì al venerdì)
            if calendar.component(.weekday, from: dayOfYear) == 2 {  // 2 significa lunedì
                let weekStart = dayOfYear
                let weekEnd = calendar.date(byAdding: .day, value: 4, to: weekStart)!
                
                // Crea le missioni per la settimana
                for i in 0..<5 {  // 5 giorni dal lunedì al venerdì
                    let missionDate = calendar.date(byAdding: .day, value: i, to: weekStart)!
                    let mission = Mission(
                        id: UUID(),
                        title: "Missione \(dayOffset + 1) - Giorno \(i + 1)",
                        description: "Descrizione della missione per il giorno \(i + 1) della settimana",
                        startDate: missionDate,
                        endDate: missionDate,  // Una missione per giorno, inizia e finisce lo stesso giorno
                        isCompleted: false,
                        completedPhoto: nil
                    )
                    allMissions.append(mission)
                }
            }
        }

        missions = allMissions
    }

    func selectCurrentChallenge() {
        let now = Date()
        currentChallenge = missions.first { $0.isActive }
    }

    func checkForChallengeUpdate() {
        let now = Date()
        if currentChallenge == nil || !(currentChallenge?.isActive ?? false) {
            selectCurrentChallenge()
        }
    }

    func completeMission(id: UUID, with photo: UIImage?) {
        if let index = missions.firstIndex(where: { $0.id == id }) {
            missions[index].isCompleted = true
            missions[index].completedPhoto = photo
        }
        checkForChallengeUpdate()
    }

    var allMissionsCompleted: Bool {
        missions.allSatisfy { $0.isCompleted }
    }
}
