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
            MainView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                        .renderingMode(.template)
                        .foregroundColor(Color("311C"))
                    Text("지누랑!")
                }
            GNUMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("교내지도")
                }
            Text("출석체크 오버레이뷰")
                .tabItem {
                    Image(systemName: "clock")
                    Text("출석체크")
                }
            TimeTableView()
                .tabItem {
                    Image(systemName: "questionmark.app.dashed")
                    Text("시간표?")
                }
            IDCardView()
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
