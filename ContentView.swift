import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    
    @ObservedObject var ds:DataSource = DataSource.shared
    @AppStorage("PERSONAL_BEST") var highScore = UserDefaults.standard.integer(forKey: "PERSONAL_BEST")
    @State private var isPlay:Bool = false
    @State private var isIntro:Bool = false
    
    @State private var hintIndex:Int = Int.random(in: 0..<hints.count)
    
    
    var body: some View {
        if(self.isPlay) {
            GameView()
        }
        else if(self.isIntro) {
            IntroductionView()
                .opacity(self.isIntro ? 1 : 0)
        }
        else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray,.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("logo-nobg")
                        .resizable()
                        .frame(width: UIScreen.screenWidth/3, height: UIScreen.screenWidth/3)
                        .padding(.bottom)
                    Text("Read Sheet!")
                        .font(.system(size: 72))
                        .fontWeight(.semibold)
                        
                    Text("Personal Best: \(highScore)")
                        .font(.system(size: 36))
                        .padding(.bottom,75)
                        
                    
                    Button(action: {
                        ds.dataSource = []
                        ds.dataSource = sheetImage
                        ds.score = 0
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.isPlay = true
                        }
                    }) {
                    Text("Play")
                        .foregroundColor(.white)
                        .padding()
                        .font(.system(size: 36))
                        .frame(width: 400, height: 100)
                    }
                    
                    .background(.black)
                    .padding(.vertical)
                    .cornerRadius(30)
                    
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.isIntro = true
                        }
                    }) {
                        Text("Introduction")
                            .foregroundColor(.white)
                            .padding()
                            .font(.system(size:36))
                            .frame(width: 400, height:100)
                    }
                    .background(.black)
                    .padding(.vertical)
                    .cornerRadius(30)
                    Text("Hint: \n \(hints[hintIndex])")
                        .font(.system(size: 28))
                        .multilineTextAlignment(.center)
                        .padding(.top,50)
                        .padding(.horizontal,UIScreen.screenWidth/16)
                    Spacer()
                }
            }
        }
            
    }
}
