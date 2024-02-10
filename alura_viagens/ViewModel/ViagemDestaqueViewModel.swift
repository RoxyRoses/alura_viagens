//
//  ViagemDestaqueViewModel.swift
//  alura_viagens
//
//  Created by Jennifer Sarah Salomao on 03/02/24.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
