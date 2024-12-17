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
        // Carica le missioni di dicembre da MissionData.swift
        var allMissions: [Mission] = []
        
        allMissions.append(contentsOf: decemberWeek1Missions)
        allMissions.append(contentsOf: decemberWeek2Missions)
        allMissions.append(contentsOf: decemberWeek3Missions)
        allMissions.append(contentsOf: decemberWeek4Missions)
        
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
