//
//  FirstIntroView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 23/04/22.
//

import SwiftUI

struct FirstIntroView: View {
    @State private var returnMenu:Bool = false
    @State private var isNext:Bool = false
    var body: some View {
        if(self.isNext) {
            SecondIntroView()
        }
        else if(self.returnMenu) {
            ContentView()
        }
        else {
            NavigationView {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    VStack {
                        Text("Welcome to Read Sheet!")
                            .fontWeight(.semibold)
                            .font(.system(size: 72))
                            .padding(.top, UIScreen.screenHeight/8)
                        Image("logo-nobg")
                            .resizable()
                            .frame(width:UIScreen.screenWidth/3, height:UIScreen.screenWidth/3)
                        Text("Read Sheet! is a small game where you follow a sleepy note named Crotchet. He's so sleepy that if he would take a rest, he'd fall into deep slumber. Your goal is to help Crotchet land on the empty block across and avoid the rest blocks.")
                            .multilineTextAlignment(.center)
                            .font(.system(size:36))
                            .padding(.vertical,50)
                            .padding(.horizontal,UIScreen.screenWidth/5)
                        Spacer()
                        HStack {
                            Button(action: {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.returnMenu = true
                                }
                            }) {
                                
                                Text("Main menu")
                                    .font(.system(size: 36))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.all, 36)
                                    .frame(width:UIScreen.screenWidth/4)
                            }
                            .background(.black)
                            .cornerRadius(25)
                            .padding(.trailing,UIScreen.screenWidth/32)
                            Button(action: {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isNext = true
                                }
                            }) {
                                
                                Text("Next")
                                    .font(.system(size: 36))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.all, 36)
                                    .frame(width:UIScreen.screenWidth/4)
                            }
                            .background(.black)
                            .cornerRadius(25)
                            .padding(.leading,UIScreen.screenWidth/32)
                        }
                        Spacer()
                        Spacer()
                    }
                }
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea([.top, .bottom])
            }
            .navigationViewStyle(.stack)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}
