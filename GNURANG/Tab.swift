//
//  Tab.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/17.
//

import SwiftUI

/// 커스텀 탭 예정. 물론 시간 남으면... ㅎㅎ
/// 미리 만들어놓기만 하자.

struct TabItem: Identifiable {
    var id = UUID()  // 여긴 UUID인데... 아마 여러개를 enum은 여러개를 만들고 각각 지정해주니까 그런건가..?
    var name: String
    var icon: String
    var tab: Tab
}

enum Tab: String {
    case home, map, check, timetable, user
}

/// 13일차에 가장 힘들었던 부분.
/// 이젠 어디서든 이 값들을 불러올 수 있겠지?

enum Campus: String, CaseIterable, Identifiable {
    case 가좌캠, 칠암캠, 통영캠
    var id: Self { self }
}

enum CafeteriaName: String, CaseIterable, Identifiable {
    case 중앙1식당, 아람관, 교육문화1층식당, 교직원식당
    var id: Self { self } // ? uuid?
}

struct Cafeteria: Identifiable {
    var id = UUID()
    var text: String
    var name: CafeteriaName
    var campus: Campus
    var url: String
    var isLastSeen: Bool
}

var CafeteriaList = [
    Cafeteria(text: "중앙1식당", name: .중앙1식당, campus: .가좌캠, url: "nil", isLastSeen: false),
    Cafeteria(text: "아람관", name: .아람관, campus: .가좌캠, url: "nil", isLastSeen: false),
    Cafeteria(text: "교육문화1층식당", name: .교육문화1층식당, campus: .가좌캠, url: "nil", isLastSeen: false),
    Cafeteria(text: "교직원식당", name: .교직원식당, campus: .가좌캠, url: "nil", isLastSeen: false)
]

enum Notice: String, CaseIterable, Identifiable {
    case 기관, 학사, 장학, 학술, 채용
    var id: Self { self }
}
