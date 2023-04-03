//
//  ContentView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//  https://velog.io/@seodam_hst/SwiftUI-%EC%98%A8%EB%B3%B4%EB%94%A9Onboarding-%ED%99%94%EB%A9%B4-%EB%A7%8C%EB%93%A4%EA%B8%B0

import SwiftUI

struct _ContentView: View {
    // 사용자 안내 온보딩 페이지를 앱 설치 후 최초 실행할 때만 띄우도록 하는 변수.
    // @AppStorage에 저장되어 앱 종료 후에도 유지됨.
    // @AppStorage("_isFirstLaunching") var isFirstLaunching: Bool = true
    @State var isFirstLaunching: Bool = true  // 테스팅

    var body: some View {
        MainTabView()
            // 앱 최초 구동 시 전체화면으로 OnboardingTabView 띄우기
            .fullScreenCover(isPresented: $isFirstLaunching) {
                OnboardingTabView(isFirstLaunching: $isFirstLaunching)
            }
    }
}

struct _ContentView_Previews: PreviewProvider {
    static var previews: some View {
        _ContentView()
    }
}
