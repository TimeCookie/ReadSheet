//
//  LaneGeneratorView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 20/04/22.
//

import SwiftUI

struct LaneGenerator: View {
    @Binding var sheetSelector:Int
    
    @ObservedObject var ds:DataSource = DataSource.shared
    
    var body: some View {
            
        HStack(spacing:0) {
            ForEach(ds.dataSource[sheetSelector].startPos...(ds.dataSource[sheetSelector].startPos == 0 ? ds.dataSource[sheetSelector].interval - 1 : ds.dataSource[sheetSelector].interval), id: \.self) { n in
                
                let interval:Int = ds.dataSource[sheetSelector].interval // 7
                let startPos:Int = ds.dataSource[sheetSelector].startPos // 1
                
                ZStack {
                    //Render first block with Crotchet
                    if(startPos == 0 && n == startPos) {
                        Image("black-note")
                            .resizable()
                            .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                    }
                    else if(startPos == 1 && n == startPos) {
                        Image("white-note")
                            .resizable()
                            .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                    }
                    //Render the rest blocks
                    if(startPos == 0) {
                        if(n > startPos && n < interval - 1) {
                            if(n % 2 == 0) {
                                Image("black-rest")
                                    .resizable()
                                    .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                            }
                            else {
                                Image("white-rest")
                                    .resizable()
                                    .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                            }
                        }
                    }
                    else if(startPos == 1) {
                        if(n > startPos && n < interval) {
                            if(n % 2 == 0) {
                                Image("black-rest")
                                    .resizable()
                                    .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                            }
                            else {
                                Image("white-rest")
                                    .resizable()
                                    .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                            }
                        }
                    }
                    //Render the last block
                    if(startPos == 0 && n == interval-1) {
                        if(interval % 2 == 0) {
                            Rectangle()
                                .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                                .aspectRatio(1.0, contentMode:.fit)
                                .foregroundColor(Color.black)
                        } else {
                            Rectangle()
                                .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                                .aspectRatio(1.0, contentMode:.fit)
                                .foregroundColor(Color.white)
                        }
                    }
                    else if(startPos == 1 && n == interval) {
                        if(interval % 2 == 0) {
                            Rectangle()
                                .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                                .aspectRatio(1.0, contentMode:.fit)
                                .foregroundColor(Color.white)
                        } else {
                            Rectangle()
                                .frame(width:UIScreen.screenWidth/9, height:UIScreen.screenWidth/9)
                                .aspectRatio(1.0, contentMode:.fit)
                                .foregroundColor(Color.black)
                        }
                    }
                }
                
            }
        }
        .padding(.vertical,25)
        
    }
}

