//
//  SplashScreen.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image("GNU_default")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
            Text("지누랑!")
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
