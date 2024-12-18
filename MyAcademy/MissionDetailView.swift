//
//  MissionDetailView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI
import UIKit

struct MissionDetailView: View {
    let mission: Mission
    var onComplete: (UIImage) -> Void
    @Binding var isPresented: Bool // Binding per controllare la modale
    @State private var showingImagePicker = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(mission.title)
                .font(.largeTitle)
                .padding()
                .accessibilityLabel("Titolo della missione: \(mission.title)")
            
            Text(mission.description)
                .font(.body)
                .padding()
                .accessibilityLabel("Descrizione della missione: \(mission.description)")
            
            // Mostra l'immagine della missione o un'icona di default
            if let photo = selectedImage ?? mission.completedPhoto {
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .accessibilityLabel("Foto della missione caricata")
            } else {
                Image(systemName: "photo") // Immagine di default
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundColor(.gray)
                    .cornerRadius(10)
                    .accessibilityLabel("Nessuna foto caricata")
            }
            
            Button("Carica foto") {
                showingImagePicker = true
            }
            .buttonStyle(.borderedProminent)
            .accessibilityLabel("Carica una foto")
            .accessibilityHint("Tocca per selezionare una foto dalla galleria")
            
            if selectedImage != nil {
                Button("Completa Missione") {
                    if let photo = selectedImage {
                        onComplete(photo)
                        isPresented = false // Chiudi la modale
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .accessibilityLabel("Completa la missione")
                .accessibilityHint("Tocca per completare la missione con la foto caricata")
            }
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $selectedImage)
                .accessibilityLabel("Seleziona un'immagine dalla galleria")
        }
    }
}

#Preview {
    @Previewable @State var isPresented = true

    return MissionDetailView(
        mission: Mission(
            id: UUID(),
            title: "Missione 1",
            description: "Trova un albero e scatta una foto.",
            startDate: Date(),
            endDate: Date().addingTimeInterval(60),
            isCompleted: false,
            completedPhoto: nil
        ),
        onComplete: { _ in
            print("Missione completata!") // Azione di esempio per la preview
        },
        isPresented: $isPresented
    )
}


