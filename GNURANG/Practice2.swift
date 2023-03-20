//
//  Practice2.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/20.
//

import SwiftUI

extension String: Identifiable {
    public var id: String { self }
}

struct Practice2: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        ScrollView {
            ZStack {
                // ZStack {
                //     AngularGradient(gradient: Gradient(colors: [.red, .pink, .cyan, .yellow, .red]), center: .center, angle: .degrees(isAnimating ? 120 : 60))
                //     LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
                //     Circle()
                //         .frame(width: 250, height: 250)
                //         .offset(x: isAnimating ? 100 : 150, y: isAnimating ? -100 : -200)
                //         .foregroundColor(Color("311C").opacity(0.6))
                //         .blur(radius: 8)
                //     Circle()
                //         .frame(width: 400, height: 400)
                //         .offset(x: isAnimating ? -100 : -150, y: isAnimating ? -100 : -200)
                //         .foregroundColor(Color.blue.opacity(0.3))
                //         .blur(radius: 12)
                //     Circle()
                //         .frame(width: 250, height: 230)
                //         .offset(x: isAnimating ? 0 : 30, y: isAnimating ? 100 : 150)
                //         .foregroundColor(Color.cyan.opacity(0.3))
                //         .blur(radius: 8)
                // }
                // .frame(height:.infinity)
                // .blur(radius: 10)
                // // .frame()
                
                
                VStack {
                    Spacer()
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
                    // .clipShape(Rectangle())
                    // .blur(radius: 10, opaque: true)
                    // .frame(maxHeight: .infinity)
                    .frame(maxWidth: .infinity)
                    // .frame(height:500)
                .border(.red)
                }
                
                
                VStack() {
                    Spacer()
                    Text("Developer")
                    ForEach(0..<20) { idx in
                        Text("\(idx)")
                    }
                    
                    
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
        // .offset(y:-500)
    }
    
}

struct Test: View {
    var body: some View {
        Text("Hello")
    }
}

struct Practice2_Previews: PreviewProvider {
    static var previews: some View {
        Practice2()
    }
}
