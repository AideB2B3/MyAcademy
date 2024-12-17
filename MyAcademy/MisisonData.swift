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
// Ottobre - Settimana 1
let octoberWeek1Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 7))!)
let octoberWeek1Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto delle foglie cadute", description: "Descrizione della missione Lunedì", startDate: octoberWeek1Start, endDate: octoberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi un racconto d'autunno", description: "Descrizione Martedì", startDate: octoberWeek1Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: octoberWeek1Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna una zucca decorata", description: "Descrizione Mercoledì", startDate: octoberWeek1Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: octoberWeek1Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una ricetta a base di zucca", description: "Descrizione Giovedì", startDate: octoberWeek1Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: octoberWeek1Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Descrivi un ricordo autunnale", description: "Descrizione Venerdì", startDate: octoberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: octoberWeek1Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Ottobre - Settimana 2
let octoberWeek2Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 14))!)
let octoberWeek2Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di un albero autunnale", description: "Descrizione della missione Lunedì", startDate: octoberWeek2Start, endDate: octoberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi una poesia sui colori dell'autunno", description: "Descrizione Martedì", startDate: octoberWeek2Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: octoberWeek2Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna un paesaggio autunnale", description: "Descrizione Mercoledì", startDate: octoberWeek2Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: octoberWeek2Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Prepara una decorazione per Halloween", description: "Descrizione Giovedì", startDate: octoberWeek2Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: octoberWeek2Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta il tuo film horror preferito", description: "Descrizione Venerdì", startDate: octoberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: octoberWeek2Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Ottobre - Settimana 3
let octoberWeek3Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 21))!)
let octoberWeek3Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di una decorazione di Halloween", description: "Descrizione della missione Lunedì", startDate: octoberWeek3Start, endDate: octoberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi una storia spaventosa", description: "Descrizione Martedì", startDate: octoberWeek3Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: octoberWeek3Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna un mostro di Halloween", description: "Descrizione Mercoledì", startDate: octoberWeek3Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: octoberWeek3Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una maschera di Halloween", description: "Descrizione Giovedì", startDate: octoberWeek3Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: octoberWeek3Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Descrivi la tua serata di Halloween ideale", description: "Descrizione Venerdì", startDate: octoberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: octoberWeek3Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Ottobre - Settimana 4
let octoberWeek4Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 10, day: 28))!)
let octoberWeek4Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di una serata autunnale", description: "Descrizione della missione Lunedì", startDate: octoberWeek4Start, endDate: octoberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Descrivi un ricordo di Halloween", description: "Descrizione Martedì", startDate: octoberWeek4Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: octoberWeek4Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna un costume di Halloween creativo", description: "Descrizione Mercoledì", startDate: octoberWeek4Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: octoberWeek4Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Prepara una bevanda calda autunnale", description: "Descrizione Giovedì", startDate: octoberWeek4Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: octoberWeek4Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta come festeggerai Halloween quest'anno", description: "Descrizione Venerdì", startDate: octoberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: octoberWeek4Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Novembre - Settimana 1
let novemberWeek1Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 4))!)
let novemberWeek1Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto del cielo autunnale", description: "Descrizione della missione Lunedì", startDate: novemberWeek1Start, endDate: novemberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi 5 cose per cui sei grato", description: "Descrizione Martedì", startDate: novemberWeek1Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: novemberWeek1Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna un paesaggio invernale", description: "Descrizione Mercoledì", startDate: novemberWeek1Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: novemberWeek1Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Prepara un dolce tipico di novembre", description: "Descrizione Giovedì", startDate: novemberWeek1Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: novemberWeek1Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta una tradizione di famiglia", description: "Descrizione Venerdì", startDate: novemberWeek1Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: novemberWeek1Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

//Novembre - Settimana 2
let novemberWeek2Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 11))!)
let novemberWeek2Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di una foglia autunnale", description: "Descrizione della missione Lunedì", startDate: novemberWeek2Start, endDate: novemberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi una lettera di gratitudine a qualcuno", description: "Descrizione Martedì", startDate: novemberWeek2Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: novemberWeek2Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una lista di cose che ti rendono felice", description: "Descrizione Mercoledì", startDate: novemberWeek2Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: novemberWeek2Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna un paesaggio autunnale", description: "Descrizione Giovedì", startDate: novemberWeek2Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: novemberWeek2Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta la tua tradizione autunnale preferita", description: "Descrizione Venerdì", startDate: novemberWeek2Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: novemberWeek2Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Novembre - Settimana 3
let novemberWeek3Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 18))!)
let novemberWeek3Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di un tramonto autunnale", description: "Descrizione della missione Lunedì", startDate: novemberWeek3Start, endDate: novemberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi una ricetta di una zuppa calda", description: "Descrizione Martedì", startDate: novemberWeek3Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: novemberWeek3Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna il tuo maglione autunnale ideale", description: "Descrizione Mercoledì", startDate: novemberWeek3Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: novemberWeek3Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Fai una passeggiata e raccogli foglie colorate", description: "Descrizione Giovedì", startDate: novemberWeek3Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: novemberWeek3Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi un racconto breve sull'autunno", description: "Descrizione Venerdì", startDate: novemberWeek3Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: novemberWeek3Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]

// Novembre - Settimana 4
let novemberWeek4Start = getMonday(of: Calendar.current.date(from: DateComponents(year: 2024, month: 11, day: 25))!)
let novemberWeek4Missions: [Mission] = [
    Mission(id: UUID(), title: "Scatta una foto di un momento di relax", description: "Descrizione della missione Lunedì", startDate: novemberWeek4Start, endDate: novemberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Scrivi tre cose per cui sei grato questo mese", description: "Descrizione Martedì", startDate: novemberWeek4Start.addingTimeInterval(1 * 24 * 60 * 60), endDate: novemberWeek4Start.addingTimeInterval(5 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Disegna una scena del Giorno del Ringraziamento", description: "Descrizione Mercoledì", startDate: novemberWeek4Start.addingTimeInterval(2 * 24 * 60 * 60), endDate: novemberWeek4Start.addingTimeInterval(6 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Crea una playlist rilassante per l'autunno", description: "Descrizione Giovedì", startDate: novemberWeek4Start.addingTimeInterval(3 * 24 * 60 * 60), endDate: novemberWeek4Start.addingTimeInterval(7 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil),
    Mission(id: UUID(), title: "Racconta come ti prepari all'inverno", description: "Descrizione Venerdì", startDate: novemberWeek4Start.addingTimeInterval(4 * 24 * 60 * 60), endDate: novemberWeek4Start.addingTimeInterval(8 * 24 * 60 * 60), isCompleted: false, completedPhoto: nil)
]


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
