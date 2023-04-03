//
//  Account.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

import Foundation

struct Account {
    /// General Information
    var email: String  // 로그인 id 대신 이메일 쓸거임
    var pw: String //passwd // 뭐지 그냥 써본건데 진짜 passwd라는 자료형이 있는건가 // 일단 보안쪽은 잘 몰라서 평문으로 처리해놓았다. 원래 이렇게 하면 안됨.
    var uid: String  // UID. 이걸 그냥 로그인 토큰처럼 써버릴까 싶다. // 학생등록이 완료되면 서버에서 전달받을 값.
    
    /// Personalization
    var name: String  // Student Name
    var sid: String  // Student ID
    var university: String  // Student University
    var campus: String // Student University Campus
    var department: String  // Student Department
    var major: String // Student Major
    
    
    // 학번?
    
    /// 앱 내에서 처리될 값들
    var loginToken: String  // 아직 구현까진 힘들듯
    var lastLogin: String  // Time // 만약 일정 기간 초과시 자동 로그아웃
    var lastSelected: String
    
    // var isFirstLogin: Bool = true  // 최초 로그인시 도움말 제공용 // 이 값은 여기 말고 다른데 있어야지
    var isPassGenerated: Bool = false  // 패스를 만들었을 경우 패스뷰에서 발급받기 강조버튼 제거용
}
