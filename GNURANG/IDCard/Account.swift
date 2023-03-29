//
//  Account.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

import Foundation

struct Account {
    /// General Information
    var uid = UUID()
    var id: String
    var pw: passwd  // 뭐지 그냥 써본건데 진짜 passwd라는 자료형이 있는건가
    
    /// Personalization
    var name: String  // Student Name
    var sid: String  // Student ID
    var group: String  // Student Department
    var univ: String  // Student University
    var campus: String // Student University Campus
    // 학번?
    
    /// 앱 내에서 처리될 값들
    var loginToken: String  // 아직 구현까진 힘들듯
    var lastLogin: String  // Time // 만약 일정 기간 초과시 자동 로그아웃
    var lastSelected: String
    
    // var isFirstLogin: Bool = true  // 최초 로그인시 도움말 제공용 // 이 값은 여기 말고 다른데 있어야지
    var isPassGenerated: Bool = false  // 패스를 만들었을 경우 패스뷰에서 발급받기 강조버튼 제거용
}
