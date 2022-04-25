//
//  SecondIntroView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 23/04/22.
//

import SwiftUI

struct SecondIntroView: View {
    @State private var isNext:Bool = false
    @State private var isPrev:Bool = false
    var body: some View {
        if(self.isNext) {
            ThirdIntroView()
        }
        else if(self.isPrev) {
            FirstIntroView()
        }
        else{
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Blocks")
                        .fontWeight(.semibold)
                        .font(.system(size: 72))
                        .padding(.top, UIScreen.screenHeight/8)
                    HStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                            .padding(.trailing,50)
                        Rectangle()
                            .fill(.black)
                            .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                            .padding(.leading,50)
                    }
                    
                    Text("There are two colored blocks that indicates where Crotchet is or where he will land.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:36))
                        .padding(.vertical,50)
                        .padding(.horizontal,UIScreen.screenWidth/5)
                    Text("These blocks can be used as a guide whether Crotchet will take an odd interval jump or an even interval jump.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:36))
                        .padding(.horizontal,UIScreen.screenWidth/5)
                    Spacer()
                    HStack {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                self.isPrev = true
                            }
                        }) {
                            Text("Previous")
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
    }
}
