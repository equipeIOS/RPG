//
//  ContentView.swift
//  MesaArcana
//
//  Created by Cintia Cassia Reis Braulino on 18/07/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.marromEscuro
                    .edgesIgnoringSafeArea(.all)

                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.amareloOuro, lineWidth: 3)
                    .padding()

                VStack(spacing: 30) {
                    Spacer()

                    Text("Seja Bem Vindo,\nMestre/Jogador!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.amareloOuro)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Text("Pronto para elevar suas sessões de RPG a outro nível? Nosso app te ajuda com organização, praticidade e tudo o que você precisa para focar em suas sessões!")
                        .font(.title2)
                        .foregroundColor(.brancoGelo)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)

                    Spacer()

                    NavigationLink(destination: TelaInicial()) {
                        Text("COMEÇAR JORNADA!")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.brancoGelo)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 40)
                            .background(
                                Capsule()
                                    .fill(Color.marron)
                                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                            )
                    }
                    .padding(.bottom, 50)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    WelcomeView()
}
