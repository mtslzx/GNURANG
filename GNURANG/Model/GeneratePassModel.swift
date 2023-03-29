//
//  GeneratePassModel.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

import Foundation

struct GeneratePassResponse: Codable {
    let status: Int
    let succes: Bool?
    let message: String
    // let data: PassData?
    let data: String // 나중에 변경하기
}

struct PassData: Codable {
    // Response 데이터의 객체들 작성하면 될듯?
    let json: String
}
