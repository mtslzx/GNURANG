//
//  MainTabView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("지누랑! 메인뷰")
                .tabItem {
                    Image(systemName: "doc.text.image")
                        .renderingMode(.template)
                        .foregroundColor(Color("311C"))
                    Text("지누랑!")
                }
            Text("교내지도 뷰")
                .tabItem {
                    Image(systemName: "map")
                    Text("교내지도")
                }
            Text("출석체크 오버레이뷰")
                .tabItem {
                    Image(systemName: "clock")
                    Text("출석체크")
                }
            Text("시간표 뷰")
                .tabItem {
                    Image(systemName: "questionmark.app.dashed")
                    Text("시간표?")
                }
            Text("마이페이지 뷰")
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                        .foregroundColor(Color("311C"))
                    Text("{name}")
                }
        }.toolbarBackground(.red, for: .automatic)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
