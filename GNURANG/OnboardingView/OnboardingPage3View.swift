//
//  OnboardingPage3View.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//

import SwiftUI

struct OnboardingPage3View: View {
    var body: some View {
        ZStack {
            Color("ColorWhite")
            VStack {
                Image("GNU_doit")
                    .resizable()
                    .scaledToFit()
                    .frame(height:300)
                    .padding()
                    .padding(.top, 120)
                Text("자, 이제 시작해볼까요?")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
            }
        }
    }
}

struct OnboardingPage3View_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3View()
    }
}
