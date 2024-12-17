// MissionData.swift
// MyAcademy
//
// Created by Davide Bellobuono on 17/12/24.
//
//
//  MissionData.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 17/12/24.
//

import SwiftUI

// Funzione per ottenere il lunedì di una settimana dato una data
func getMonday(of date: Date) -> Date {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day, .weekday], from: date)
    let weekday = components.weekday!
    let daysToSubtract = weekday - 2  // 2 = Lunedì
    return calendar.date(byAdding: .day, value: -daysToSubtract, to: date)!
}

// Dicembre - Settimana 1
let decemberWeek1Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 2))!)
let decemberWeek1Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto della neve", description: "Descrizione della missione Lunedì", startDate: decemberWeek1Start, endDate: decemberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),  // Venerdì
    Mission(id: UUID(), title: "Scrivi una poesia invernale", description: "Descrizione Martedì", startDate: decemberWeek1Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: decemberWeek1Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),  // Venerdì
    Mission(id: UUID(), title: "Disegna un paesaggio innevato", description: "Descrizione Mercoledì", startDate: decemberWeek1Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: decemberWeek1Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),  // Venerdì
    Mission(id: UUID(), title: "Crea una lista dei regali di Natale", description: "Descrizione Giovedì", startDate: decemberWeek1Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: decemberWeek1Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),  // Venerdì
    Mission(id: UUID(), title: "Racconta una tradizione natalizia", description: "Descrizione Venerdì", startDate: decemberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: decemberWeek1Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)  // Venerdì
]

// Dicembre - Settimana 2
let decemberWeek2Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 9))!)
let decemberWeek2Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di una decorazione natalizia", description: "Descrizione della missione Lunedì", startDate: decemberWeek2Start, endDate: decemberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi una lettera a Babbo Natale", description: "Descrizione Martedì", startDate: decemberWeek2Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: decemberWeek2Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna il tuo sogno natalizio", description: "Descrizione Mercoledì", startDate: decemberWeek2Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: decemberWeek2Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Impara una canzone natalizia", description: "Descrizione Giovedì", startDate: decemberWeek2Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: decemberWeek2Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta un aneddoto natalizio", description: "Descrizione Venerdì", startDate: decemberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: decemberWeek2Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Dicembre - Settimana 3
let decemberWeek3Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 16))!)
let decemberWeek3Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di una lucina natalizia", description: "Descrizione della missione Lunedì", startDate: decemberWeek3Start, endDate: decemberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Descrivi il tuo piatto natalizio preferito", description: "Descrizione Martedì", startDate: decemberWeek3Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: decemberWeek3Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna il tuo regalo ideale", description: "Descrizione Mercoledì", startDate: decemberWeek3Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: decemberWeek3Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una carta di auguri", description: "Descrizione Giovedì", startDate: decemberWeek3Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: decemberWeek3Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta come prepari il Natale", description: "Descrizione Venerdì", startDate: decemberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: decemberWeek3Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Dicembre - Settimana 4
let decemberWeek4Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 23))!)
let decemberWeek4Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto sotto l'albero di Natale", description: "Descrizione della missione Lunedì", startDate: decemberWeek4Start, endDate: decemberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta il significato del Natale", description: "Descrizione Martedì", startDate: decemberWeek4Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: decemberWeek4Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna la tua famiglia natalizia", description: "Descrizione Mercoledì", startDate: decemberWeek4Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: decemberWeek4Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una playlist natalizia", description: "Descrizione Giovedì", startDate: decemberWeek4Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: decemberWeek4Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Condividi un augurio di Natale", description: "Descrizione Venerdì", startDate: decemberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: decemberWeek4Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]
