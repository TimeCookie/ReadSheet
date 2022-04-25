//
//  CHECK.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 22/04/22.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var ds:DataSource = DataSource.shared
    
    @State private var containerView:[String] = ["2nd", "3rd", "4th","5th","6th","7th"]
    
    @State private var isShowing:Bool = false
    @State private var sheetSelector:Int = 0
    @State private var ans:[Int] = [2,3,4,5,6,7]
    
    @State private var imageName:String = ""
    @State private var correctAns:String = ""
    @State private var isCorrect:Bool = false
    
    
    var body: some View {
        if(ds.dataSource.count == 8) {
            WinLoseView()
        }
        else if(isShowing && ds.dataSource.count > 1) {
            FeedbackSheet(ds: self.ds, isCorrect: $isCorrect, isShowing: $isShowing, imageName: $imageName, correctAns: $correctAns, ansIndex: $sheetSelector)
        }
        else if(!isShowing && ds.dataSource.count > 1) {
            ZStack {
                Color.black.opacity(0.75)
                VStack {
                    Spacer()
                    Text("Score: \(ds.score)")
                        .font(.system(size:30))
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                    Text("Which block should Crotchet lands on?")
                        .font(.system(size: 40))
                        .padding()
                        .foregroundColor(.white)
                    LaneGenerator(sheetSelector:$sheetSelector)
                    SheetGenerator(selector: $sheetSelector)
                    VStack {
                        HStack {
                            Button(action: {
                                
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[0] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    print("ANSWERRRRRR: \(self.isCorrect)")
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[0])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                            Button(action: {
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[1] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[1])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                        }
                        .padding(.vertical)
                        HStack{
                            Button(action: {
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[2] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[2])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                                //350 125
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                            Button(action: {
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[3] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    print("ANSWERRRRRR: \(self.isCorrect)")
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[3])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                        }
                        .padding(.vertical)
                        HStack {
                            Button(action: {
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[4] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    print("ANSWERRRRRR: \(self.isCorrect)")
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[4])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                            Button(action: {
                                imageName = self.ds.dataSource[sheetSelector].imageName

                                if(self.ds.dataSource[sheetSelector].interval == 2) {
                                    correctAns = "2nd"
                                }
                                else if(self.ds.dataSource[sheetSelector].interval == 3) {
                                    correctAns = "3rd"
                                }
                                else {
                                    correctAns = "\(self.ds.dataSource[sheetSelector].interval)th"
                                }

                                if(ans[5] == self.ds.dataSource[sheetSelector].interval) {
                                    self.isCorrect = true
                                    print("ANSWERRRRRR: \(self.isCorrect)")
                                    ds.score += 100
                                }
                                else {
                                    self.isCorrect = false
                                }
                                print(isCorrect)
                                print(correctAns)
                                print(imageName)
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isShowing = true
                                }
                            }) {
                                Text(containerView[5])
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .frame(width:UIScreen.screenWidth/3,height:UIScreen.screenHeight/12)
                            }
                //            .sheet(isPresented:$isShowing) {
                //                FeedbackSheet(ds:self.ds, isCorrect: $isCorrect, isShowing: $isShowing,imageName: $imageName, correctAns: $correctAns,ansIndex: $ansIndex)
                //            }
                            .background(.black)
                            .cornerRadius(10)
                        .padding(.horizontal)
                        }
                        .padding(.vertical)
                    }
                    
                    Spacer()
                }
            }
            .ignoresSafeArea()
            .onAppear {
                sheetSelector = Int.random(in: 0..<ds.dataSource.count-1)
                print(ds.dataSource)
                print(ds.dataSource.count)
                print("Image name: \(ds.dataSource[sheetSelector].imageName)")
                print("Sheet no. \(sheetSelector)")
                print("Interval: \(ds.dataSource[sheetSelector].interval)")
            }
        }
        
    }
}

