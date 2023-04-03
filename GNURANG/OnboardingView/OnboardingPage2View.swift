//
//  OnboardingPage2View.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//

import SwiftUI

struct OnboardingPage2View: View {
    var body: some View {
        ZStack {
            Color("ColorWhite")
            VStack {
                Image("GNU_sad")
                    .resizable()
                    .scaledToFit()
                    .frame(height:230)
                    .padding()
                    .padding(.top, 190)
                Text("기능 설명 페이지는 아직 개발중이에요...")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text("여기 뭔가뭔가 기능 설명이 들어가야 하는데..")
                    .font(.title3)
                Spacer()
            }
        }
    }
}

struct OnboardingPage2View_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2View()
    }
}
