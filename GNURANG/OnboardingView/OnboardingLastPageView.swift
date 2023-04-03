//
//  OnboardingLastPageView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//

import SwiftUI

struct OnboardingLastPageView: View {
    // let imageName: String
    // let title: String
    // let subtitle: String
    
    // @Binding var isFirstLaunching: Bool
    
    var body: some View {
        VStack {
            Image("GNU_world")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()
            Text("학생등록")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("subtitle")
                .font(.title2)
            
            // 온보딩 완료 버튼.
            // AppStorage의 isFirstLaunching 값을 false로 바꾸기 때문에, 다음번에 앱을 실행할 때는 OnboardingTabView를 띄우지 않음.
            Button {
                // isFirstLaunching.toggle()
                print("A")
            } label: {
                Text("시작하기")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(6)
            }
            .padding()
        }
    }
}

struct OnboardingLastPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLastPageView()
    }
}
