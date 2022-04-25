//
//  File.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 20/04/22.
//

import Foundation

struct SheetImage:Identifiable {
    var id:UUID?
    var imageName:String
    var lowerNote:String
    var upperNote:String
    var interval:Int
    var startPos:Int //0 for space, 1 for line
}
