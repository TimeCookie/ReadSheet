//
//  ThirdIntroView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 23/04/22.
//

import SwiftUI

struct ThirdIntroView: View {
    @State private var isPrev:Bool = false
    @State private var isNext:Bool = false
    
    var body: some View {
        if(self.isPrev) {
            SecondIntroView()
        }
        else if(self.isNext) {
            FourthIntroView()
        }
        else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Blocks")
                        .fontWeight(.semibold)
                        .font(.system(size: 72))
                        .padding(.top, UIScreen.screenHeight/8)
                    HStack {
                        VStack {
                            Image("black-note")
                                .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                            Image("space-note")
                                .resizable()
                                .frame(width: UIScreen.screenWidth/5, height: UIScreen.screenHeight/8)
                            
                                
                        }
                        .padding(.trailing,UIScreen.screenWidth/16)
                        VStack {
                            Image("white-note")
                                .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                            Image("line-note")
                                .resizable()
                                .frame(width: UIScreen.screenWidth/5, height: UIScreen.screenHeight/8)
                                
                        }
                        .padding(.leading,UIScreen.screenWidth/16)
                        
                    }
                    
                    Text("White block means Crotchet is on a space in the music sheet.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:36))
                        .padding(.vertical,50)
                        .padding(.horizontal,UIScreen.screenWidth/5)
                    Text("Black block means Crotchet is on a line in the music sheet.")
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
        }
        
    }
}

struct ThirdIntroView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdIntroView()
    }
}
