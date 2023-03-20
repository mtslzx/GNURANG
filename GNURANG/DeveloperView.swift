//
//  DeveloperView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/21.
//

import SwiftUI

struct DeveloperView: View {
    let widgetPadding: CGFloat = 20
    let widgetWidth: CGFloat = 430
    let widgetHeight: CGFloat = 260
    @State private var isAnimating: Bool = false

    let settings = ["개발자"]
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    
                    
                    VStack {
                        
                        
                        VStack {
                            ForEach(1..<40){idx in
                                Text("\(idx)")
                            }
                        }
                        Text("HELLO")
                        
                        // Profile ID
                        Group {
                            ZStack {
                                // RoundedRectangle(cornerRadius: 10)  // Background
                                
                                RoundedRectangle(cornerRadius: 10)  // Storke
                                    .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                    .background {
                                        ZStack {
                                            AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 120 : 60))
                                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                                            Circle()
                                                .frame(width: 250, height: 250)
                                                .offset(x: isAnimating ? 100 : 150, y: isAnimating ? -100 : -200)
                                                .foregroundColor(Color("311C").opacity(0.6))
                                                .blur(radius: 8)
                                            Circle()
                                                .frame(width: 400, height: 400)
                                                .offset(x: isAnimating ? -100 : -150, y: isAnimating ? -100 : -200)
                                                .foregroundColor(Color.blue.opacity(0.3))
                                                .blur(radius: 12)
                                            Circle()
                                                .frame(width: 250, height: 230)
                                                .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                                                .foregroundColor(Color.cyan.opacity(0.3))
                                                .blur(radius: 8)
                                        }
                                        .hueRotation(.degrees(isAnimating ? 30 : 0))
                                        .opacity(0.8)
                                        .blur(radius: 10)
                                        // .ignoresSafeArea()
                                    }
                                    .onAppear {
                                        withAnimation(.easeInOut(duration: 10).repeatForever(autoreverses: true)) {
                                            isAnimating.toggle()
                                        }
                                    }
                                
                                
                            
                                    // .background(Gradient(colors: [Color("AccentColor"), Color("DropShadow")]))
                                    .cornerRadius(20)
                                Group {
                                    VStack {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("컴퓨터과학과 컴퓨터과학부")
                                                    .font(.headline)
                                                Text("하일환")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                            }
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Image("GNU_simple")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width:80)
                                            Spacer()
                                            Text("2022010844")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                    }
                                }
                                .foregroundColor(Color("ColorWhite"))
                                .padding(20)
                                
                            }
                            .frame(height: 210)  // <- Set Widget Height
                            .padding(.horizontal, 16)  // Safe Margin
                            .padding(.top, 16)
                            

                        }
                        
                        // ID Card Pass Link
                        NavigationLink(destination: GNUMapView()) {
                            Group {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color("311C"))
                                    HStack {
                                        Image("Wallet")
                                        //                                .font(.system(size: 30, weight: .semibold))
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(10)
                                        Text("Apple Wallet에 학생증 추가하기")
                                            .font(.headline)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 30))
                                    }
                                    .padding(.leading, 5)
                                    .padding(.trailing, 20.0)
                                    .foregroundColor(.white)
                                }
                                .frame(height: 48)  // <- Set Widget Height
                                .padding(.horizontal, 16)  // Safe Margin
                                .padding(.top, 10)
                            }
                        }
                        
                        
                        
                        // Settings
                        Button("WLW") {
                            print("H")
                        }
                        
                        
                        // Menu
                        //            let passButton =  PKAddPassButton(addPassButtonStyle: PKAddPassButtonStyle.black)
                        //            passButton.frame = CGRect(x:45.0, y: 340.0, width: 320, height: 50)
                        //            IDCardView.addSubview(passButton)
                        
                        ZStack {
                            // Background Rect ==
                            RoundedRectangle(cornerRadius: 10)  // BG Blur
                                .fill(Color("DropShadow"))
                                .blur(radius: 10)
                                .padding(widgetPadding)
                                .shadow(color: Color("DropShadow").opacity(0.3), radius: 14, x:0, y:0)
                                .frame(width: widgetWidth, height: widgetHeight)
                            RoundedRectangle(cornerRadius: 10)  // Gradient
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Testing"), Color("2192C").opacity(0.01)]), startPoint: .top, endPoint: .bottom))
                                .padding(widgetPadding)
                                .frame(width: widgetWidth, height: widgetHeight)
                            RoundedRectangle(cornerRadius: 10)  // Stroke
                                .stroke(Color("Testing"))
                                .opacity(0.1)
                                .padding(widgetPadding)
                                .frame(width: widgetWidth, height: widgetHeight)
                            // Widget Infomation ==
                        }
                        
                    }
                    
                    Group {
                        ZStack {
                            ZStack {
                                AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 120 : 60))
                                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                                Circle()
                                    .frame(width: 250, height: 250)
                                    .offset(x: isAnimating ? 100 : 150, y: isAnimating ? -100 : -200)
                                    .foregroundColor(Color("311C").opacity(0.6))
                                    .blur(radius: 8)
                                Circle()
                                    .frame(width: 400, height: 400)
                                    .offset(x: isAnimating ? -100 : -150, y: isAnimating ? -100 : -200)
                                    .foregroundColor(Color.blue.opacity(0.3))
                                    .blur(radius: 12)
                                Circle()
                                    .frame(width: 250, height: 230)
                                    .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                                    .foregroundColor(Color.cyan.opacity(0.3))
                                    .blur(radius: 8)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .blur(radius: 10, opaque: true)
                            
                            // .frame(maxWidth: .infinity, maxHeight: 210)
                            // .frame(height:500)
                            .border(.red)

                            
                            VStack() {
                                Spacer()
                                ZStack {
                                    RoundedRectangle(cornerRadius:20)  // 몰랐는데 Background에 Thin같은 머터리얼을 적용하면 이렇게 노가다 안해도 되더라..
                                        .foregroundColor(.white)
                                        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(lineWidth: 1.5).fill(Color.white))
                                        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                                        // .padding(.horizontal, 16)
                                        .blendMode(.softLight).opacity(0.8)
                                    Group {
                                        VStack {
                                            HStack {
                                                VStack(alignment: .leading, spacing: 4) {
                                                    Text("컴퓨터과학과 컴퓨터과학부")
                                                        .font(.headline)
                                                    Text("하일환")
                                                        .font(.title)
                                                        .fontWeight(.bold)
                                                }
                                                .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 0)
                                                Spacer()
                                            }
                                            Spacer()
                                            HStack {
                                                Image("GNU_simple")
                                                    .renderingMode(.template)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width:80)
                                                    
                                                Spacer()
                                                Text("2022010844")
                                                    .font(.callout)
                                                    .fontWeight(.semibold)
                                                    .shadow(color: Color.black.opacity(0.3), radius: 16, x: 0, y: 10)
                                            }
                                        }
                                    }
                                    .foregroundColor(Color("ColorWhite"))
                                    .padding(20)
                                }
                                .frame(height:200, alignment:.top)
                                // .frame(maxWidth: .infinity, maxHeight: 210)
                                .padding(.horizontal, 16)  // Safe Margin
                            .padding(.vertical, 16)
                                
                            }
                            .border(.green)
                        }
                        .border(.blue)
                    }
                }
            }
            .background(Color("ColorBG"))  // Background Color
        }
        
        
    }
}

struct DeveloperView_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperView()
    }
}
