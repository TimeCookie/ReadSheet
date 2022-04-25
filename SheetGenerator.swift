//
//  SheetGenerator.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 20/04/22.
//

import SwiftUI

struct SheetGenerator: View {
    
    @ObservedObject var ds:DataSource = DataSource.shared
    @Binding var selector: Int
    
    var body: some View {
        Image(ds.dataSource[selector].imageName)
            .resizable()
            .padding(.vertical,25)
            .frame(width: UIScreen.screenWidth/4, height: UIScreen.screenWidth/4)
            .aspectRatio(1.0,contentMode: .fit)
    }
}
