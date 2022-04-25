//
//  WinLoseView.swift
//  Read Sheet!
//
//  Created by Marvin Christian on 19/04/22.
//

import SwiftUI

struct WinLoseView: View {
    @ObservedObject var ds:DataSource = DataSource.shared
    @AppStorage("PERSONAL_BEST") var highScore:Int = UserDefaults.standard.integer(forKey: "PERSONAL_BEST")
    @State private var isMove:Bool = false
    
    var body: some View {
        if(isMove) {
            ContentView()
        }
        else {
            
            ZStack {
                VStack {
                    Text((ds.score >= 500) ? "Good Job!" : "Try Again")
                        .font(.system(size: 72))
                        .fontWeight(.semibold)
                        .padding()
                    Image((ds.score >= 500) ? "win-avatar" : "lose-avatar")
                        .resizable()
                        .frame(width: 400, height:400)
                    Text((ds.score >= 500) ? "Nice one!" : "It's okay, take your time.")
                        .padding(.vertical,30)
                        .font(.system(size: 48))
                    Button(action: {
                        if(ds.score > highScore) {
                            highScore = ds.score
                        }
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.isMove = true
                        }
                    }) {
                        Text("Return to main menu")
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding()
                    .background(.black)
                    .cornerRadius(25)
                }
            }
            
            
        }
    }
}
//
//struct WinLoseView_Previews: PreviewProvider {
//    @State static var dummyData:Bool = false
//    static var previews: some View {
//        WinLoseView(isMove: $dummyData)
//    }
//}
