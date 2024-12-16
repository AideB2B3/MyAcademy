//
//  MissioneDetailView.swift
//  MyAcademy
//
//  Created by Davide Bellobuono on 11/12/24.
//

import SwiftUI
import UIKit

struct MissionDetailView: View {
    let mission: Mission
    var onComplete: (UIImage) -> Void
    
    @State private var showingImagePicker = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(mission.title)
                .font(.largeTitle)
                .padding()
            
            Text (mission.description)
                .font(.body)
                .padding()
            
            // Mostra l'immagine della missione o un'icona di default
            if let photo = selectedImage ?? mission.completedPhoto {
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
            } else {
                Image(systemName: "photo") // Immagine di default
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundColor(.gray)
                    .cornerRadius(10)
            }
            
            Button("Carica foto") {
                showingImagePicker = true
            }
            .buttonStyle(.borderedProminent)
            
            if selectedImage != nil {
                Button("Completa Missione") {
                    if let photo = selectedImage {
                        onComplete(photo)
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $selectedImage)
        }
    }
}


#Preview {
    MissionDetailView(
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
        }
    )
}
