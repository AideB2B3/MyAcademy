//
//  ViewModel.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//
import Foundation
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

class MissionViewModel: ObservableObject {
    @Published var missions: [Mission] = [] // Tutte le missioni
    @Published var currentChallenge: Mission? // Sfida corrente

    init() {
        loadMissions()
        selectCurrentChallenge()
    }

    /// Carica tutte le missioni disponibili
    func loadMissions() {
        var allMissions: [Mission] = []
        allMissions.append(contentsOf: decemberWeek1Missions)
        allMissions.append(contentsOf: decemberWeek2Missions)
        allMissions.append(contentsOf: decemberWeek3Missions)
        allMissions.append(contentsOf: decemberWeek4Missions)
        missions = allMissions
    }

    /// Seleziona la sfida corrente in base alla data attuale
    func selectCurrentChallenge() {
        _ = Date()
        currentChallenge = missions.first { $0.isActive }
    }

    /// Verifica se la sfida corrente deve essere aggiornata
    func checkForChallengeUpdate() {
        if currentChallenge == nil || !(currentChallenge?.isActive ?? false) {
            selectCurrentChallenge()
        }
    }

    /// Segna una missione come completata e aggiorna lo stato
    func completeMission(id: UUID, with photo: UIImage?) {
        if let index = missions.firstIndex(where: { $0.id == id }) {
            missions[index].isCompleted = true
            missions[index].completedPhoto = photo
            objectWillChange.send() // Forza l'aggiornamento della vista
        }
        checkForChallengeUpdate()
    }

    /// Verifica se tutte le missioni sono completate
    var allMissionsCompleted: Bool {
        missions.allSatisfy { $0.isCompleted }
    }

    /// Verifica se tutte le missioni di una settimana sono completate
    func isWeekCompleted(missions: [Mission]) -> Bool {
        missions.allSatisfy { $0.isCompleted }
    }

}
