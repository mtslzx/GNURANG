// //
// //  NoticeWidgetView.swift
// //  GNURANG
// //
// //  Created by 하일환 on 2023/03/17.
// //
//
// import SwiftUI
//
// struct NoticeWidgetView: View {
//     var body: some View {
//         Group {  // GNU NOTICE Group
//             ZStack {
//                 RoundedRectangle(cornerRadius: 10)
//                     .strokeBorder(Color("ColorStorke"), lineWidth: 1)
//                     .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
//                 VStack(alignment: .leading, spacing: 7) {
//                     Group {  // Title and Category
//                         HStack(spacing: 3) {  // Title
//                             Text("GNU")
//                                 .fontWeight(.heavy)
//                                 .font(.title3)
//                                 .foregroundColor(.accentColor)
//                             Text("NOTICE")
//                                 .fontWeight(.heavy)
//                                 .font(.title3)
//                             Rectangle()
//                                 .frame(height: 1.5)
//                                 .padding(.horizontal, 7) // Safe Margin 맞추자.
//                             // =============== Top Button
//                             Button {  // Show More Button
//                                 print("More")
//                             } label: {
//                                 Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
//                                     .font(.subheadline)
//                                     .fontWeight(.heavy)
//                             }
//                         }
//
//                         HStack {  // Category
//                             //                                    Picker(selection: $selectedNotice) {
//                             //                                        <#code#>
//                             //                                    } label: {
//                             //                                        <#code#>
//                             //                                    }
//                             // Spacer()
//                             Button {  // = 기관 버튼 =
//                                 withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
//                                     selectedNotice = .기관
//                                 }
//                             } label: {
//                                 Text("기관")
//                                     .font(.callout)
//                                     .foregroundColor(selectedNotice == .기관 ? .accentColor : .primary)
//                                     .fontWeight(selectedNotice == .기관 ? .black : .regular)
//                             }
//                             Spacer()  // 힘의 균형을 맞춰보자.
//                             Button {  // = 학사 버튼 =
//                                 withAnimation(.spring(response: 0.3, dampingFraction: 0.65)) {
//                                     selectedNotice = .학사
//                                 }
//                             } label: {
//                                 Text("학사")
//                                     .font(.callout)
//                                     .foregroundColor(selectedNotice == .학사 ? .accentColor : .primary)
//                                     .fontWeight(selectedNotice == .학사 ? .black : .regular)
//                             }
//                             Spacer()  // 힘의 균형을 맞춰보자.
//                             .foregroundColor(.primary)
//                             Button {  // = 장학 버튼 =
//                                 withAnimation(.spring(response: 0.3, dampingFraction: 0.625)) {
//                                     selectedNotice = .장학
//                                 }
//                             } label: {
//                                 Text("장학")
//                                     .font(.callout)
//                                     .foregroundColor(selectedNotice == .장학 ? .accentColor : .primary)
//                                     .fontWeight(selectedNotice == .장학 ? .black : .regular)
//                             }
//                             Spacer()  // 힘의 균형을 맞춰보자.
//                             Button {  // = 학술 버튼 =
//                                 withAnimation(.spring(response: 0.3, dampingFraction: 0.65)) {
//                                     selectedNotice = .학술
//                                 }
//                             } label: {
//                                 Text("학술")
//                                     .font(.callout)
//                                     .foregroundColor(selectedNotice == .학술 ? .accentColor : .primary)
//                                     .fontWeight(selectedNotice == .학술 ? .black : .regular)
//                             }
//                             Spacer()  // 힘의 균형을 맞춰보자.
//                             Button {  // = 채용 버튼 =
//                                 withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
//                                     selectedNotice = .채용
//                                 }
//                             } label: {
//                                 Text("채용")
//                                     .font(.callout)
//                                     .foregroundColor(selectedNotice == .채용 ? .accentColor : .primary)
//                                     .fontWeight(selectedNotice == .채용 ? .black : .regular)
//                             }
//                             // Spacer()  // 힘의 균형을 맞춰보자.
//                         }
//                         .frame(width: 200)  // Category Selector Frame size
//                         .overlay {  // Category Indicator w. Animation
//                             HStack {  // 막 만들다 보니깐 뭔가 작동하는게 만들어져 버렸다..!
//                                 if selectedNotice == .채용 { Spacer() }
//                                 if selectedNotice == .학사 {
//                                     Spacer()
//                                 }
//                                 if selectedNotice == .학술 {
//                                     Spacer()
//                                     Spacer()
//                                     Spacer()
//                                 }
//
//                                 Rectangle()  // Indicator Shape
//                                     .fill(Color("AccentColor"))
//                                     .frame(width: 28, height: 2.6)
//                                     .cornerRadius(5)
//                                     .offset(y:6)
//                                 .frame(maxHeight: .infinity, alignment: .bottom)
//                                 if selectedNotice == .학술 {
//                                     Spacer()
//                                 }
//                                 if selectedNotice == .학사 {
//                                     Spacer()
//                                     Spacer()
//                                     Spacer()
//                                 }
//                                 if selectedNotice == .기관 { Spacer() }
//                                 // Spacer()
//                                 // Spacer()
//                                 // Spacer()
//                             }
//                             // .border(.red)  // 아웃라인 확인용
//                         }
//                     }
//                     VStack (spacing: 10) {  // List of Notice
//
//                         // Tag, Title, footnote. date
//                         VStack(alignment: .leading, spacing: 2) {
//                             HStack {
//                                 // Text("[공지] [국가근로]")  // {Tag}
//                                 Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
//                                     .font(.headline)
//                                     .lineLimit(1, reservesSpace: true)
//                             }
//                             Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
//                                 .font(.footnote)
//                                 .lineLimit(2, reservesSpace: true)
//                                 // .padding(.leading, 5)
//                                 .foregroundColor(.gray)
//                         }
//                         // .frame(height:contentHeight)
//                         // .padding(.horizontal, 0)
//                         VStack(alignment: .leading, spacing: 2) {
//                             HStack {
//                                 // Text("[공지] [국가근로]")  // {Tag}
//                                 Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
//                                     .font(.headline)
//
//                                     .lineLimit(1, reservesSpace: true)
//                             }
//                             Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
//                                 .font(.footnote)
//                                 .foregroundColor(Color("ColorGray"))
//                                 .lineLimit(2, reservesSpace: true)
//                         }
//                         // .frame(height:contentHeight)
//                         // .padding(.horizontal, 0)
//                         VStack(alignment: .leading, spacing: 2) {
//                             HStack {
//                                 // Text("[공지] [국가근로]")  // {Tag}
//                                 Text("2023학년도 1학기 국가근로장학생 최종 선발 명단 안내")  // {Title}
//                                     .font(.headline)
//                                     .lineLimit(1, reservesSpace: true)
//                             }
//                             Text("안녕하십니까 학생과 국가근로담당자입니다. 국가근로 최종 선발자를 붙임과 같이 안내하오니 아래 유의사항 필독하시어 근로 진행여부 확인 바랍니다.")  // {Subtitle}
//                                 .font(.footnote)
//                                 .lineLimit(2, reservesSpace: true)
//                         }
//                         // .frame(height:contentHeight)
//
//                     }
//                     .padding(.vertical, 3)
//                     .padding(.top, 8)
//                     // .padding(.leading, 3)
//                     .padding(.trailing, 14)
//                     // Spacer()
//                     // HStack {
//                     //     Rectangle()
//                     //         .frame(height: 1)
//                     //     Button {  // More Button
//                     //         print("More")
//                     //     } label: {
//                     //         HStack(alignment: .center) {
//                     //             // Spacer()
//                     //             Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
//                     //                 .fontWeight(.semibold)
//                     //                 .font(.subheadline)
//                     //         }
//                     //     }
//                     // }
//                     // ===================== Bottom Button
//                     // Button {  // Show More Button
//                     //     print("More")
//                     // } label: {
//                     //     HStack(alignment: .center) {
//                     //         Spacer()
//                     //         Text("더보기 \(Image(systemName: "chevron.forward.circle.fill"))")
//                     //             .fontWeight(.semibold)
//                     //             .font(.subheadline)
//                     //     }
//                     // }.padding(.horizontal, 2)
//                     Spacer()
//                 }
//                 .padding(16)
//             }
//             .frame(height: 300)  // <- Set Widget Height
//             .padding(.horizontal, 16)
//             .padding(.top, 5)
//         }  // END of Notice
//     }
// }
//
// struct NoticeWidgetView_Previews: PreviewProvider {
//     static var previews: some View {
//         NoticeWidgetView()
//     }
// }
