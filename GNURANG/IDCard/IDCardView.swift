//
//  IdcardView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/07.
//

import SwiftUI
import PassKit

struct IDCardView: View {
    let widgetPadding: CGFloat = 20
    let widgetWidth: CGFloat = 430
    let widgetHeight: CGFloat = 260
    @State private var isAnimating: Bool = false

    let settings = ["개발자"]
    var body: some View {
        NavigationView {
            ScrollView {
                    VStack {
                        
                        // Profile ID Design 3
                        Group {
                            ZStack {
                                // RoundedRectangle(cornerRadius: 10)  // Background
                                RoundedRectangle(cornerRadius: 20)  // Storke
                                    .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                    .background(Color("AccentColor"))
                                    .mask(RoundedRectangle(cornerRadius: 20))
                                Group {
                                    VStack {
                                        HStack(alignment: .top) {
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("컴퓨터과학과 컴퓨터과학부")
                                                    .font(.headline)
                                                Text("하일환")
                                                    .font(.largeTitle)
                                                    .fontWeight(.heavy)
                                            }
                                            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 0)
                                            Spacer()
                                            Image("GNU_default")
                                                .resizable()
                                                .scaledToFit()
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
                                        }
                                        .shadow(color: Color.black.opacity(0.4), radius: 1, x: 0, y: 0)
                                    }
                                }
                                .foregroundColor(Color(.white))
                                .padding(20)
                                
                            }
                            .frame(height: 200)  // <- Set Widget Height
                            // .cornerRadius(20)
                            .padding(.horizontal, 16)  // Safe Margin
                            .padding(.top, 16)
                            

                        }
                        
                        Group {  // ID Card Design 1
                            ZStack {
                                ZStack {
                                    AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 120 : 60))
                                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                                    Circle()
                                        .frame(width: 150, height: 150)
                                        .offset(x: isAnimating ? 70 : 10, y: isAnimating ? 20 : -40)
                                        .foregroundColor(Color.cyan.opacity(0.3))
                                        .blur(radius: 8)
                                    Circle()
                                        .frame(width: 140, height: 140)
                                        .offset(x: isAnimating ? -100 : -150, y: isAnimating ? 0 : -100)
                                        .foregroundColor(Color.blue.opacity(0.3))
                                        .blur(radius: 12)
                                    Circle()
                                        .frame(width: 120, height: 120)
                                        .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                                        .foregroundColor(Color.orange.opacity(0.4))
                                        .blur(radius: 8)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                
                                // .frame(height:100)
                                .frame(height:210, alignment:.center)
                                // .frame(maxWidth: .infinity, maxHeight: 210)
                                .padding(18)
                                .blur(radius: 10, opaque: false)

                                VStack() {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:20)  // 몰랐는데 Background에 Thin같은 머터리얼을 적용하면 이렇게 노가다 안해도 되더라..
                                            .foregroundColor(.white)
                                            .background(.thickMaterial)
                                            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(lineWidth: 1.5).fill(Color.white))
                                            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                                            // .padding(.horizontal, 16)
                                            .blendMode(.softLight).opacity(0.15)
                                        RoundedRectangle(cornerRadius:20)
                                            .foregroundColor(.white)
                                            .opacity(0.3)
                                        Group {
                                            VStack {
                                                HStack(alignment: .top) {
                                                    VStack(alignment: .leading, spacing: 4) {
                                                        HStack {
                                                            Text("컴퓨터과학과 컴퓨터과학부")
                                                                .font(.headline)
                                                                .fontWeight(.bold)
                                                                .lineLimit(1, reservesSpace: true)
                                                            Spacer()
                                                            // Rectangle()
                                                            //     .frame(width: 140, height: 1.5)
                                                            //     .padding(.horizontal, 7) // Safe Margin 맞추자.
                                                        }
                                                        Text("하일환")
                                                            .font(.system(size: 30))
                                                            .fontWeight(.heavy)
                                                    }
                                                    .shadow(color: Color.black.opacity(0.35), radius: 2, x: 0, y: 0)
                                                    Spacer()
                                                    Image("GNU_default")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .opacity(0.8)
                                                        .overlay{
                                                            Image("GNU_default")
                                                                
                                                                .renderingMode(.template)
                                                                .resizable()
                                                                .scaledToFit()
                                                                
                                                                .blendMode(.overlay).opacity(0.3)
                                                                .foregroundColor(.white)
                                                        }
                                                }
                                                Spacer()
                                                HStack {
                                                    Image("GNU_simple")
                                                        .renderingMode(.template)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width:80)
                                                        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 0)
                                                        
                                                    Spacer()
                                                    Text("2022010844")
                                                        .font(.callout)
                                                        .fontWeight(.semibold)
                                                        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 0)
                                                }
                                            }
                                        }
                                        .foregroundColor(Color("ColorWhite"))
                                        .padding(20)
                                    }
                                    .frame(height:200)
                                    // .frame(maxWidth: .infinity, maxHeight: 210)
                                    .padding(.horizontal, 16)  // Safe Margin
                                .padding(.vertical, 16)
                                }
                            }
                        }
                        
                        
                        // Profile ID Design 2
                        Group {
                            ZStack {
                                // RoundedRectangle(cornerRadius: 10)  // Background
                                
                                RoundedRectangle(cornerRadius: 20)  // Storke
                                    .strokeBorder(Color("ColorStroke"), lineWidth: 1)
                                    .background {
                                        ZStack {
                                            AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 60 : 80))
                                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                                            Circle()
                                                .frame(width: 300, height: 300)
                                                .offset(x: isAnimating ? 20 : 150, y: isAnimating ? -100 : -200)
                                                .foregroundColor(Color.pink.opacity(0.13))
                                                .blur(radius: 20)
                                            Circle()
                                                .frame(width: 400, height: 400)
                                                .offset(x: isAnimating ? -100 : -150, y: isAnimating ? -100 : -200)
                                                .foregroundColor(Color.blue.opacity(0.15))
                                                .blur(radius: 12)
                                            Circle()
                                                .frame(width: 250, height: 230)
                                                .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                                                .foregroundColor(Color.yellow.opacity(0.25))
                                                .blur(radius: 18)
                                        }
                                        .hueRotation(.degrees(isAnimating ? 0 : -10))
                                        .opacity(0.8)
                                        .blur(radius: 8)
                                        // .ignoresSafeArea()
                                    }
                                    .mask(RoundedRectangle(cornerRadius:20))  // The shapes and gradients made in the background are sticking out, so you have to cut them into mask.
                                    .onAppear {
                                        withAnimation(.easeInOut(duration: 10).repeatForever(autoreverses: true)) {
                                            isAnimating.toggle()
                                        }
                                    }
                                    // .cornerRadius(20)
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
                                        }
                                        .shadow(color: Color.black.opacity(0.4), radius: 1, x: 0, y: 0)
                                    }
                                }
                                .foregroundColor(Color("ColorWhite"))
                                .padding(20)
                                
                            }
                            .frame(height: 210)  // <- Set Widget Height
                            .padding(.horizontal, 16)  // Safe Margin
                            .padding(.top, 16)
                            

                        }
                        
                        
                        
                        Group {  // ID Card Design 4 // TEST
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("AccentColor"))
                                    .background {
                                        ZStack {
                                            // AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 120 : 60))
                                            // LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                                            // Circle()
                                            //     .frame(width: 150, height: 150)
                                            //     .offset(x: isAnimating ? 70 : 10, y: isAnimating ? 20 : -40)
                                            //     .foregroundColor(Color.cyan.opacity(0.3))
                                            //     .blur(radius: 8)
                                            // Circle()
                                            //     .frame(width: 140, height: 140)
                                            //     .offset(x: isAnimating ? -100 : -150, y: isAnimating ? 0 : -100)
                                            //     .foregroundColor(Color.blue.opacity(0.3))
                                            //     .blur(radius: 12)
                                            // Circle()
                                            //     .frame(width: 120, height: 120)
                                            //     .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                                            //     .foregroundColor(Color.orange.opacity(0.4))
                                            //     .blur(radius: 8)
                                            Color("AccentColor").brightness(0.8)
                                        }
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    }
                                
                                // .frame(height:100)
                                .frame(height:200, alignment:.center)
                                // .frame(maxWidth: .infinity, maxHeight: 210)
                                .padding(18)
                                .blur(radius: 10, opaque: false)

                                VStack() {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:20)  // 몰랐는데 Background에 Thin같은 머터리얼을 적용하면 이렇게 노가다 안해도 되더라..
                                            .strokeBorder(Color(.black), lineWidth: 1)
                                            .foregroundColor(.white)
                                            .background(.thickMaterial)
                                            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(lineWidth: 1.5).fill(Color.white))
                                            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                                            // .padding(.horizontal, 16)
                                            .blendMode(.softLight).opacity(0.15)
                                        RoundedRectangle(cornerRadius:20)
                                            .foregroundColor(.white)
                                            .opacity(0.3)
                                        Group {
                                            VStack {
                                                HStack(alignment:.top) {
                                                    VStack(alignment: .leading, spacing: 4) {
                                                        HStack {
                                                            Text("컴퓨터과학과 컴퓨터과학부")
                                                                .font(.headline)
                                                                .fontWeight(.bold)
                                                                .lineLimit(1, reservesSpace: true)
                                                            Spacer()
                                                            
                                                        }
                                                        Text("하일환")
                                                            .font(.system(size: 30))
                                                            .fontWeight(.heavy)
                                                    }
                                                    .shadow(color: Color.black.opacity(0.35), radius: 2, x: 0, y: 0)
                                                    Spacer()
                                                    Image("GNU_default")
                                                        .resizable()
                                                        .scaledToFit()
                                                }
                                                Spacer()
                                                HStack {
                                                    Image("GNU_simple")
                                                        .renderingMode(.template)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width:80)
                                                        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 0)
                                                        
                                                    Spacer()
                                                    Text("2022010844")
                                                        .font(.callout)
                                                        .fontWeight(.semibold)
                                                        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 0)
                                                }
                                            }
                                        }
                                        .foregroundColor(Color(.white))
                                        .padding(20)
                                    }
                                    .frame(height:200)
                                    // .frame(maxWidth: .infinity, maxHeight: 210)
                                    .padding(.horizontal, 16)  // Safe Margin
                                .padding(.vertical, 16)
                                }
                            }
                        }
                        
                        // ID Card Pass Link
                        NavigationLink(destination: PassView()) {
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
                                        Image(systemName: "plus.circle")
                                            .font(.system(size: 22))
                                    }
                                    .padding(.leading, 5)
                                    .padding(.trailing, 20.0)
                                    .foregroundColor(.white)
                                }
                                .frame(height: 60)  // <- Set Widget Height
                                .padding(.horizontal, 16)  // Safe Margin
                                .padding(.top, 10)
                            }
                        }
                        
                        
                        
                        
                        // Settings
                        Button("WLW") {
                            print("H")
                        }
                        
                        Group {  // Navigation Button Group
                            LazyVStack(alignment:.leading) {
                                Button {  // Navigation Button - Go setting
                                    print("navigation button")
                                } label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                                        HStack {
                                            Text("Setting")
                                            Divider()
                                            Spacer()
                                            Image(systemName: "chevron.right")
                                        }
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 12)
                                    }
                                }
                                NavigationLink {  // Navigation Button - Account
                                    RegisterView()
                                } label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                                        HStack {
                                            Image(systemName: "person.fill")
                                                .font(.system(size:18))  // icon size fix
                                            Divider()
                                            Text("계정")
                                            Spacer()
                                            Image(systemName: "chevron.right")
                                        }
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 12)
                                    }
                                }
                                ZStack {  // Setting Shortcut Section
                                    RoundedRectangle(cornerRadius: 10)  // Background Shape
                                        .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                                    VStack {  // Setting Shortcuts
                                        /// When listing settings shortcuts, be sure to insert Divider() between items.
                                        /// Note that the first and last items have different .padding to balance the spacing between them.
                                        HStack(alignment: .center) {  // First Item - Lang
                                            Image(systemName: "bell.fill")
                                                .font(.system(size:18))  // icon size fix
                                            Divider()
                                            Text("알림")
                                            Spacer()
                                            Image(systemName: "chevron.right")
                                        }
                                        .padding(.bottom, 2)
                                        Divider()
                                            .padding(.vertical, 2)
                                        NavigationLink(destination: LanguageSelectorView()) {
                                            HStack(alignment: .center) {
                                                Image(systemName: "textformat")
                                                    .font(.system(size:18))  // icon size fix
                                                Divider()
                                                Text("언어")
                                                Spacer()
                                                Image(systemName: "chevron.right")
                                            }
                                        }
                                        .padding(.vertical, 2)
                                        Divider()
                                            .padding(.vertical, 2)
                                        NavigationLink(destination: DeveloperView()) {
                                            HStack(alignment: .center) {
                                                Image(systemName: "swift")
                                                    .font(.system(size:18))  // icon size fix
                                                Divider()
                                                Text("개발자")
                                                Spacer()
                                                Image(systemName: "chevron.right")
                                            }
                                        }
                                        .padding(.top, 2)
                                    }
                                    .padding(16)
                                }
                            }
                        }
                        .padding(.horizontal, 16)

                        
                        
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
                    
                    
            }
            .background(Color("ColorBG"))  // Background Color
        }
        
        
    }
}

struct developerView: View {
    var body: some View {
        Text("WOW")
    }
}

struct IDCardView_Previews: PreviewProvider {
    static var previews: some View {
        IDCardView()
    }
}

