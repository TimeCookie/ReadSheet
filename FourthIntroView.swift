//
//  FourthIntroView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 23/04/22.
//

import SwiftUI

struct FourthIntroView: View {
    @State private var isPrev:Bool = false
    @State private var isNext:Bool = false
    
    var body: some View {
        if(isPrev) {
            ThirdIntroView()
        }
        else if(isNext) {
            FifthIntroView()
        }
        else {
           ZStack {
               LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                   .ignoresSafeArea()
               VStack {
                   Text("Rests")
                       .fontWeight(.semibold)
                       .font(.system(size: 72))
                       .padding(.top, UIScreen.screenHeight/8)
                   HStack {
                       Image("black-rest")
                           .resizable()
                           .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                           .padding()
                       Image("white-rest")
                           .resizable()
                           .frame(width: UIScreen.screenWidth/8, height: UIScreen.screenWidth/8)
                           .padding()
                   }
                   
                   Text("Rest blocks made the sleepy Crotchet even sleepier, so avoid landing on these blocks.")
                       .multilineTextAlignment(.center)
                       .font(.system(size:36))
                       .padding(.vertical,50)
                       .padding(.horizontal,UIScreen.screenWidth/5)
                   Text("Just like before, a rest on the white block means it is a space and a rest on the black block means it is a line.")
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

struct FourthIntroView_Previews: PreviewProvider {
    static var previews: some View {
        FourthIntroView()
    }
}
