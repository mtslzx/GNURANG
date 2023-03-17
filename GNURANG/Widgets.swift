//
//  Widgets.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/07.
//

import SwiftUI

struct Widgets: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WidgetBase: View {
    // WhiteBG, Storke Only
    var body: some View {
        Group {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                    .frame(height: 100)  // <- Set Widget Height
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
            }
        }
    }
}



struct WidgetMeal: View {
    
    let widgetPadding: CGFloat = 20
    let widgetWidth: CGFloat = 420
    let widgetHeight: CGFloat = 370
    
    var body: some View {
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
            VStack(alignment: .leading) {
                HStack {
                    Text("오늘의 학식 🍽️")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white)
                    Text("중앙1식당")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }.padding([.top, .leading, .trailing], 40.0)
                VStack(alignment: .leading, spacing: 10) {
                    Text("∙ 중식")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Group {
                        Text("한식: 뚝배기닭갈비찜")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Text("양식: 통안심돈까스")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Text("세트메뉴: 소시지오므라이스+칼비빔국수+쥬스")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    //                                    .frame(width:150)
                    Text("∙ 석식")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Group {Text("세트메뉴: 수육 + 순대보쌈정식")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                }.padding(.leading, 50.0)
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Spacer()
                    Text("더보기")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.white)
                .padding([.bottom, .trailing], 45.0)
            }
        }
    }
}

struct WidgetID: View {
    
    let widgetPadding: CGFloat = 20
    let widgetWidth: CGFloat = 420
    let widgetHeight: CGFloat = 370
    
    var body: some View {
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
            VStack(alignment: .leading) {
                HStack {
                    Text("오늘의 학식 🍽️")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white)
                    Text("중앙1식당")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }.padding([.top, .leading, .trailing], 40.0)
                VStack(alignment: .leading, spacing: 10) {
                    Text("∙ 중식")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Group {
                        Text("한식: 뚝배기닭갈비찜")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Text("양식: 통안심돈까스")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Text("세트메뉴: 소시지오므라이스+칼비빔국수+쥬스")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    //                                    .frame(width:150)
                    Text("∙ 석식")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Group {Text("세트메뉴: 수육 + 순대보쌈정식")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                }.padding(.leading, 50.0)
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Spacer()
                    Text("더보기")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.white)
                .padding([.bottom, .trailing], 45.0)
            }
        }
    }
}

struct Widgets_Previews: PreviewProvider {
    static var previews: some View {
//        Widgets()
//        WidgetMeal()
        WidgetID()
    }
}
