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
    
    var body: some View {
        VStack {
            // Profile
            Group {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)

                }
                .padding(10)
                .frame(height: 230)
                
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
                    .padding(10)
                    .frame(height: 100)
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
            
        }
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
struct IDCardView_Previews: PreviewProvider {
    static var previews: some View {
        IDCardView()
    }
}
