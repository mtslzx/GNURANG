//
//  OnboardingPage1View.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//

import SwiftUI

struct OnboardingPage1View: View {
    var body: some View {
        ZStack {
            Color("ColorWhite")
            VStack {
                Image("GNU_welcome")
                    .resizable()
                    .scaledToFit()
                    .frame(height:300)
                    .padding()
                    .padding(.top, 120)
                Text("지누랑!에 오신걸 환영합니다!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text("지누랑!은 경상국립대학교의 올인원 어플리케이션입니다.")
                    .font(.title3)
                Spacer()
            }
        }
    }
}

struct OnboardingPage1View_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1View()
    }
}
