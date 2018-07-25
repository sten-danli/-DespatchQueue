//
//  DesignableButton.swift
//  深入DespatchQueue
//
//  Created by Dan Li on 24.07.18.
//  Copyright © 2018 DanStenLee. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
