//
//  OnboardingTabView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//  

import SwiftUI

struct OnboardingTabView: View {
    @Binding var isFirstLaunching: Bool
    @State private var selectedItem = 1
    
    var body: some View {
            ZStack {
                TabView(selection: $selectedItem) {
                    // 페이지 1: 앱 소개
                    // OnboardingPageView(
                    //     imageName: "person.3.fill",
                    //     title: "놀라운 개발자 커뮤니티",
                    //     subtitle: "질문을 던지고, 다른 사람의 답변을 확인하세요"
                    // )
                    //
                    // // 페이지 2: 쓰기 페이지 안내
                    // OnboardingPageView(
                    //     imageName: "note.text.badge.plus",
                    //     title: "쓰기 탭",
                    //     subtitle: "이 앱은 개인 메모장으로도 쓸 수 있어요"
                    // )
                    //
                    // 페이지 3: 읽기 페이지 안내 + 온보딩 완료
                    // OnboardingLastPageView(
                    //     imageName: "eyes",
                    //     title: "읽기 탭",
                    //     subtitle: "시행착오를 정리해서 공유하고, 다른 개발자들의 인사이트를 얻으세요",
                    //     isFirstLaunching: $isFirstLaunching
                    // )
                    OnboardingPage1View().tag(1)
                    OnboardingPage2View().tag(2)
                    OnboardingPage3View().tag(3)
                }
                .tabViewStyle(PageTabViewStyle())
                Group {  // 탭에 맞는 아이템 출력
                    if selectedItem == 1 {
                        VStack {
                            Spacer()
                            Text("화면을 쓸어넘겨서 계속하자! \(Image(systemName: "arrow.right"))")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("ColorGray"))
                                .opacity(0.7)
                                .padding(80)
                        }
                    }
                    if selectedItem == 2 {
                        VStack {
                            Spacer()
                            Text("")
                        }
                    }
                    if selectedItem == 3 {
                        VStack {
                            Spacer()
                            Button {
                                isFirstLaunching.toggle()
                            } label: {
                                Text("시작하기")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .padding(12)
                                    .padding(.horizontal,32)
                                    .background(.thickMaterial)
                                    .cornerRadius(40)
                                    .padding(68)
                                
                            }
                            
                        }
                    }
                }.transition(AnyTransition.opacity.animation(.easeIn))
                
            }
    }
}

// struct OnboardingTabView_Previews: PreviewProvider {
//     static var previews: some View {
//         OnboardingTabView()
//     }
// }
