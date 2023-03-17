//
//  MealWidgetView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/17.
//

import SwiftUI

struct MealWidgetView: View {
    @State private var selectedCafeteria: CafeteriaName = .중앙1식당
    
    var body: some View {
        Group {  // GNU NOTICE Group
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                VStack(alignment: .leading, spacing: 7) {
                    Group {  // Title and Category
                        HStack(spacing: 3) {  // Title
                            Text("GNU")
                                .fontWeight(.heavy)
                                .font(.title3)
                                .foregroundColor(.accentColor)
                            Text("MEAL")
                                .fontWeight(.heavy)
                                .font(.title3)
                            Rectangle()
                                .frame(height: 1.5)
                                .padding(.horizontal, 7) // Safe Margin 맞추자.
                            // =============== Top Button
                            Button {  // Show More Button
                                print("More")
                            } label: {
                                Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
                                    .font(.subheadline)
                                    .fontWeight(.heavy)
                            }
                        }
                        
                        HStack {
                            ForEach(CafeteriaList) { item in  // Make it Flexible
                                Button {
                                    selectedCafeteria = item.name
                                    // withAnimation(.easeInOut(duration: 0.3)) {
                                    //     selectedCafeteria = item.name
                                    // }
                                } label: {
                                    Text("\(item.text)")
                                        .font(.callout)
                                        .foregroundColor(selectedCafeteria == item.name ? .accentColor : .primary)
                                        .fontWeight(selectedCafeteria == item.name ? .black : .regular)
                                        .overlay {
                                            if selectedCafeteria == item.name {
                                                withAnimation(.easeInOut(duration: 3)) {
                                                    Rectangle()  // Indicator Shape
                                                        .fill(Color("AccentColor"))
                                                        .frame(width: CGFloat(item.text.count * 10), height: 2.6)
                                                        .cornerRadius(5)
                                                        .offset(y:6)
                                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                                }
                                            }
                                            
                                        }
                                }
                                Spacer()
                            }
                        }
                        // .frame(width: 200)  // Category Selector Frame size
                        .overlay {  // Category Indicator w. Animation
                            HStack {  // 막 만들다 보니깐 뭔가 작동하는게 만들어져 버렸다..!
                                // if selectedCafeteria == .중앙1식당 { Spacer() }
                                // if selectedCafeteria == .아람관 {
                                //     Spacer()
                                // }
                                // if selectedCafeteria == .교육문화1층식당 {
                                //     Spacer()
                                //     Spacer()
                                //     Spacer()
                                // }
                                Spacer()
                                // Rectangle()  // Indicator Shape
                                //     .fill(Color("AccentColor"))
                                //     .frame(width: 40, height: 2.6)
                                //     .cornerRadius(5)
                                //     .offset(y:6)
                                // .frame(maxHeight: .infinity, alignment: .bottom)
                                Spacer()
                                Spacer()
                            }
                            // .border(.red)  // 아웃라인 확인용
                        }
                    }
                    VStack (spacing: 10) {  // List of Notice

                        // Tag, Title, footnote. date
                        VStack(alignment: .leading, spacing: 2) {
                            HStack {
                                // Text("[공지] [국가근로]")  // {Tag}
                                Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
                                    .font(.headline)
                                    .lineLimit(1, reservesSpace: true)
                            }
                            Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
                                .font(.footnote)
                                .lineLimit(2, reservesSpace: true)
                                // .padding(.leading, 5)
                                .foregroundColor(.gray)
                        }
                        // .frame(height:contentHeight)
                        // .padding(.horizontal, 0)
                        VStack(alignment: .leading, spacing: 2) {
                            HStack {
                                // Text("[공지] [국가근로]")  // {Tag}
                                Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
                                    .font(.headline)

                                    .lineLimit(1, reservesSpace: true)
                            }
                            Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
                                .font(.footnote)
                                .foregroundColor(Color("ColorGray"))
                                .lineLimit(2, reservesSpace: true)
                        }
                        // .frame(height:contentHeight)
                        // .padding(.horizontal, 0)
                        VStack(alignment: .leading, spacing: 2) {
                            HStack {
                                // Text("[공지] [국가근로]")  // {Tag}
                                Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
                                    .font(.headline)
                                    .lineLimit(1, reservesSpace: true)
                            }
                            Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
                                .font(.footnote)
                                .lineLimit(2, reservesSpace: true)
                        }
                        // .frame(height:contentHeight)

                    }
                    .padding(.vertical, 3)
                    .padding(.top, 8)
                    // .padding(.leading, 3)
                    .padding(.trailing, 14)
                    // Spacer()
                    // HStack {
                    //     Rectangle()
                    //         .frame(height: 1)
                    //     Button {  // More Button
                    //         print("More")
                    //     } label: {
                    //         HStack(alignment: .center) {
                    //             // Spacer()
                    //             Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
                    //                 .fontWeight(.semibold)
                    //                 .font(.subheadline)
                    //         }
                    //     }
                    // }
                    // ===================== Bottom Button
                    // Button {  // Show More Button
                    //     print("More")
                    // } label: {
                    //     HStack(alignment: .center) {
                    //         Spacer()
                    //         Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
                    //             .fontWeight(.semibold)
                    //             .font(.subheadline)
                    //     }
                    // }.padding(.horizontal, 2)
                    Spacer()
                }
                .padding(16)
            }
            .frame(height: 300)  // <- Set Widget Height
            .padding(.horizontal, 16)
            .padding(.top, 5)
        }  // END of Notice
    }
}

struct MealWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        MealWidgetView()
    }
}
