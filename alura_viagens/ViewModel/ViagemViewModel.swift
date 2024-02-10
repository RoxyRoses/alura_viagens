//
//  ViagemViewModel.swift
//  alura_viagens
//
//  Created by Jennifer Sarah Salomao on 03/02/24.
//

import Foundation

enum ViagemViewModelType : String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
