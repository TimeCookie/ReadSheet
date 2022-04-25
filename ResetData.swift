//
//  ResetData.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 21/04/22.
//

import Foundation

func resetData() {
    let ds = DataSource.shared
    
    ds.dataSource = []
    ds.dataSource = sheetImage
    ds.score = 0
}
