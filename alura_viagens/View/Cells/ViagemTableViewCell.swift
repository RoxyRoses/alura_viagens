//
//  ViagemTableViewCell.swift
//  alura_viagens
//
//  Created by Jennifer Sarah Salomao on 02/02/24.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

 //MARK: outlets
    
    @IBOutlet weak var statusCancelamentoLabel: UILabel!
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    @IBOutlet weak var subitituloViagemLabel: UILabel!
    
    @IBOutlet weak var tituloViagemLabel: UILabel!
    
    @IBOutlet weak var backgroundViewCell: UIView!
    
    @IBOutlet weak var viagemImage: UIImageView!
    
    func configurarCelula (_ viagem : Viagem?) {
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subitituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0 )")
        
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, attributeString.length))
        
        precoSemDescontoLabel.attributedText = attributeString
        
        if let numeroDeDias = viagem?.diaria, let numeroDeHospedes =  viagem?.hospedes
        {
            let diarias = numeroDeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" :  "Pessoas"
            
            diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
            
        }
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
}
