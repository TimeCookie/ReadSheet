//
//  File.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 17/04/22.
//

import Foundation
import SwiftUI

struct FeedbackSheet: View {
    @ObservedObject var ds:DataSource
    
    @Binding var isCorrect: Bool
    @Binding var isShowing: Bool
    @Binding var imageName: String
    @Binding var correctAns: String
    @Binding var ansIndex:Int
    
    var body: some View {
        if (isShowing) {
            NavigationView {
                ZStack {
                    Color.black.opacity(0.75).ignoresSafeArea()
                    VStack {
                        Text((self.isCorrect) ? "Good job!" : "Try again.")
                            .font(.system(size: 72))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Image((self.isCorrect == true) ? "correct" : "incorrect")
                            .resizable()
                            .frame(width: 125, height: 125)
                        Spacer()
                        Image(imageName)
                            .resizable()
                            .frame(width:300, height:200)
                            .aspectRatio(1.0, contentMode: .fit)
                        Spacer()
                        Text("The correct answer is \(correctAns)")
                            .padding()
                            .font(.system(size:36))
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            // continue code goes here...
                            self.ds.dataSource.remove(at: ansIndex)
                            withAnimation(.easeInOut(duration: 0.5)) {
                                self.isShowing = false
                            }
                        }) {
                            Text("Continue")
                                .padding()
                                .font(.system(size: 36))
                                .foregroundColor(.white)
                                .frame(width: 300, height: 100)
                        }
                        .background(.black)
                        .cornerRadius(15)
        //                NavigationLink(destination:ContentView()) {
        //                    Text("Continue")
        //                        .padding()
        //                        .font(.system(size:36))
        //                        .foregroundColor(.white)
        //                        .frame(width: 300, height: 100)
        //                }
                        
                        Spacer()
                    }
                    
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarBackButtonHidden(true)
        }
        else {
            GameView()
        }
        
    }
}
