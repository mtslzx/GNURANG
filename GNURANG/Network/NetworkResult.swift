//
//  NetworkResult.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

/// 서버 통신의 결과를 핸들링 하기 위한 열거형 선언

enum NetworkResult<T> {  // ? <T>?
    case success(T)  // 서버 통신 성공
    case requestError(T) // 요청 에러 발생
    case pathError  // 경로 에러 발생
    case serverError  // 서버 내부 에러 발생
    case networkError // 네트워크 에러 발생
}
