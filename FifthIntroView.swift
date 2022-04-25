//
//  FifthIntroView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 23/04/22.
//

import SwiftUI

struct FifthIntroView: View {
    @State private var returnMenu:Bool = false
    var body: some View {
        if(self.returnMenu) {
            ContentView()
        }
        else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Interval")
                        .fontWeight(.semibold)
                        .font(.system(size: 72))
                        .padding(.top, UIScreen.screenHeight/8)
                    VStack {
                        Image("block-intro")
                            .resizable()
                            .frame(width: UIScreen.screenWidth/2, height: UIScreen.screenWidth/8)
                            .padding()
                        Image("sheet-intro")
                            .resizable()
                            .frame(width: UIScreen.screenWidth/4, height: UIScreen.screenWidth/6)
                            .padding()
                    }
                    
                    Text("Intervals are counted from where you stand to the last block.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:36))
                        .padding(.vertical,50)
                        .padding(.horizontal,UIScreen.screenWidth/5)
                    Text("For this example where Crotchet would land is the '5th' block. Therefore, these two notes are separated by 5 steps.")
                        .multilineTextAlignment(.center)
                        .font(.system(size:36))
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
                        
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

struct FifthIntroView_Previews: PreviewProvider {
    static var previews: some View {
        FifthIntroView()
    }
}
