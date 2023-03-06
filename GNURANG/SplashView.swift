//
//  ContentView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            NavigationLink("GNURANG", destination: MainTabView())
                NavigationLink(destination: MainView()) {
                    Image(systemName: "heart")
                }

        }
        .padding()
    }
}

struct SplashView: View {
    //https://mobiraft.com/ios/swiftui/how-to-add-splash-screen-in-swiftui/
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                MainTabView()
            } else {
                // 4.
                Image("GNU_default")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220)
                ZStack {
                    Text("지누랑!")
                        .font(Font.largeTitle)
                        .fontWeight(.black)
                    Text("지누랑!")
                        .font(Font.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color("311C"))
                        .shadow(color: .black, radius: 1)
                }
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
