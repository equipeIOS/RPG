//
//  TelaInicial.swift
//  MesaArcana
//
//  Created by Cintia Cassia Reis Braulino on 18/07/25.
//

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        ZStack {
            Color.amareloClaro
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Text("MESA ARCANA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.marronFonte)
                    Spacer()
                    Image(systemName: "gearshape.fill")
                        .font(.title)
                        .foregroundColor(Color.marronFonte)
                }
                .padding(.horizontal)
                .padding(.top)

                VStack(alignment: .leading) {
                    Text("Última Campanha")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.marron)
                        .padding(.leading)

                    ZStack {
                        Image("imagefundo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .clipped()
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.amareloFundo.opacity(0.3))
                            )

                        Text("MEDIEVAL RPG")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    .frame(height: 150)
                    .cornerRadius(15)
                    .padding(.horizontal)
                }
                .padding(.top, 20)

                VStack {
                    Text("Regras & Consultas")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.marron)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .background(Color.amareloFundo)
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top, 20)

                Spacer()

                VStack {
                    Divider()
                        .background(Color.marromEscuro)
                        .padding(.horizontal)

                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "cube.fill")
                                .font(.title2)
                            Text("CAMPANHAS")
                                .font(.caption)
                        }
                        .foregroundColor(Color.marromEscuro)
                        Spacer()

                        Button(action: {
                            print("Criar tapped")
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.marromEscuro)
                        }
                        Spacer()

                        VStack {
                            Image(systemName: "person.3.fill")
                                .font(.title2)
                            Text("PERSONAGENS")
                                .font(.caption)
                        }
                        .foregroundColor(Color.marromEscuro)
                        Spacer()
                    }
                    .padding(.vertical, 8)
                }
                .background(Color.amareloFundo)
            }
        }
    }
}

#Preview {
    TelaInicial()
}
