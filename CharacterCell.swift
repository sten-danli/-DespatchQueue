//
//  CharacterCell.swift
//  深入DespatchQueue
//
//  Created by Dan Li on 14.07.18.
//  Copyright © 2018 DanStenLee. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {

    
    @IBOutlet weak var charactersImagView: UIImageView!
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        }
    
    func setup(modelData:ModleData){
        
        charactersImagView.image=modelData.image
        characterNameLabel.text=modelData.name
        characterInfoLabel.text=modelData.info
        
        
    }

}
