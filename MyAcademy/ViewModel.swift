//
//  ViewModel.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI
import Combine

struct Mission: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    var isCompleted: Bool
    var completedPhoto: UIImage?
}

class MissionViewModel: ObservableObject {
    @Published var missions: [Mission] = [
        Mission(title: "Missione 1", description: "Fotografa un albero", isCompleted: false),
        Mission(title: "Missione 2", description: "Fotografa un animale domestico.", isCompleted: false),
        Mission(title: "Missione 3", description: "Fotografa un palo.", isCompleted: false),
        Mission(title: "Missione 4", description: "Fotografa un michele.", isCompleted: false),
        Mission(title: "Missione 5", description: "Fotografa un dio.", isCompleted: false),
    ]
    
    var allMissionsCompleted: Bool {
        missions.allSatisfy { $0.isCompleted }
    }
    
    func completeMission(id: UUID, with photo: UIImage) {
        if let index = missions.firstIndex(where: { $0.id == id }) {
            missions[index].isCompleted = true
            missions[index].completedPhoto = photo
        }
    }
}
