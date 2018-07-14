//
//  Data.swift
//  深入DespatchQueue
//
//  Created by Dan Li on 14.07.18.
//  Copyright © 2018 DanStenLee. All rights reserved.
//

import UIKit

class Data{
    static func getData()->[ModleData]{
        var data:[ModleData]=[]
        
        let info = "Diese Konzeptzeichnung zeigt das Design der Eingänge zu den Schreinen, von denen es in Hyrule jede Menge gibt. In der Mitte sieht man das Shiekah-Auge."
        data.append(ModleData(name: "Zelda", info: info, image: #imageLiteral(resourceName: "Zelda")))
        data.append(ModleData(name: "Linke", info: info, image: #imageLiteral(resourceName: "Link")))
        data.append(ModleData(name: "Epona", info: info, image: #imageLiteral(resourceName: "Epona")))
        data.append(ModleData(name: "Revali", info: info, image: #imageLiteral(resourceName: "Revali")))
        data.append(ModleData(name: "Daruk", info: info, image: #imageLiteral(resourceName: "Daruk")))
        data.append(ModleData(name: "Urbosa", info: info, image: #imageLiteral(resourceName: "Urbosa")))
        
        
        return data
    }
}
