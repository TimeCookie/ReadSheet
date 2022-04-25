//
//  DataSource.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 21/04/22.
//

import Foundation

class DataSource:ObservableObject {
    static var shared = DataSource()
    
    @Published var dataSource:[SheetImage] = []
    @Published var score:Int = 0
}
