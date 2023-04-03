//
//  RegisterView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/31.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    @State private var sid: String = ""
    @State private var university: String = "경상국립대학교"
    @State private var campus: String = "가좌캠퍼스"
    @State private var department: String = ""
    @State private var major: String = ""
    private var isLoginFill: Bool = false
    
    
    var body: some View {
        ZStack {
            Color("ColorBG")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("로그인 정보")
                            .font(.headline)
                            .padding(.leading, 30)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24)
                            .padding(.trailing, 5)
                        TextField(
                            "이메일 주소를 입력해주세요.",
                            text: $email)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        
                    }
                    .padding(18)
                    .background(.ultraThickMaterial.blendMode(.softLight))
                    .cornerRadius(20)
                    .padding(.horizontal,16)
                    
                    HStack {
                        Image(systemName: "ellipsis.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24)
                            .padding(.trailing, 5)
                        SecureField(
                            "최소 8자리 이상의 비밀번호를 입력해주세요.",
                            text: $password)
                    }
                    .padding(18)
                    .background(.ultraThickMaterial.blendMode(.softLight))
                    
                    .cornerRadius(20)
                    .padding(.horizontal, 16)
                }
                .padding(.vertical,16)
                .background(.thinMaterial)
                .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black.opacity(0.3), lineWidth: 0.5))
                .cornerRadius(20)
                .shadow(color: .white.opacity(0.31), radius: 7, x: 0, y: 0)
                .padding(.horizontal, 10)
                
                if !email.isEmpty == false && !password.isEmpty == false {
                    VStack {
                        HStack {
                            Text("세부 정보")
                                .font(.headline)
                                .padding(.leading, 30)
                            Spacer()
                        }
                        VStack {
                            HStack {
                                Image(systemName: "graduationcap.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .padding(.trailing, 5)
                                Picker(selection: $university, label: Text("Picker")) {
                                    Text("경상국립대학교").tag("경상국립대학교")
                                }
                                Picker(selection: $campus, label: Text("Picker2")) {
                                    Text("가좌캠퍼스").tag("가좌캠퍼스")
                                    Text("칠암캠퍼스").tag("칠암캠퍼스")
                                    Text("통영캠퍼스").tag("통영캠퍼스")
                                }
                                Spacer()
                            }
                            .padding(18)
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding(.horizontal,16)
                            
                            HStack {
                                Picker(selection: $department, label: Text("Picker3")) {
                                    ForEach(Array(단과대학.keys), id: \.self) { i in
                                        Text("\(i)").tag(i)
                                    }
                                }
                                Picker(selection: $major, label: Text("Picker4")) {
                                    ForEach(단과대학[String(department)] ?? ["대학을 먼저 선택해주세요."], id: \.self) { i in  // 이거 만드는데 3시간 넘게 씀...
                                        Text("\(i)").lineLimit(1, reservesSpace: true).tag(i)
                                    }
                                }
                                        // Picker(selection: $department, label: Text("Picker3")) {
                                        //     ForEach(단과대학.allCases) { i in
                                        //         Text("\(i.rawValue)").tag(i.rawValue)
                                        //     }
                                        //     // 단과대학을 어떤 걸 골랐는지에 따라서 바뀌게 만들고 싶다...
                                        //     Picker(selection: $major, label: Text("Picker4")) {  // 어떻게 방법을 찾기 전까진 하드코딩..
                                        //     ForEach($department == "자연과학대학" ? 자연대.allCases : nil) { i in
                                        //         Text("\(i.rawValue)").tag(i.rawValue)
                                        //     }
                                Spacer()
                            }
                            .padding(18)
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding(.horizontal,16)
                            
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .padding(.trailing, 5)
                                TextField(
                                    "본인의 실명을 입력해주세요.",
                                    text: $name)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                
                            }
                            .padding(18)
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding(.horizontal,16)
                            
                            HStack {
                                Image(systemName: "number.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .padding(.trailing, 5)
                                TextField(
                                    "10자리의 학번을 입력해주세요.",
                                    text: $sid)
                                .textInputAutocapitalization(.never)
                                .disableAutocorrection(true)
                            }
                            .padding(18)
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding(.horizontal, 16)
                        }
                        
                    }
                    .padding(.vertical,16)
                    .background(Color("ColorWhite").opacity(0.7))
                    .cornerRadius(20)
                    .padding(.horizontal, 10)
                    .transition(.slide)
                    .animation(.easeInOut)
                }
                if !major.isEmpty == false && !name.isEmpty == false && !sid.isEmpty == false {
                    Button {
                        print("REGISTER")
                    } label: {
                        Text("등록하기")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorWhite"))
                            
                    }
                    .padding(18)
                    .padding(.horizontal, 64)
                    .background(Color("AccentColor"))
                    .cornerRadius(40)
                    .padding(16)
                }
            }
            
        }
        .navigationTitle("등록")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
