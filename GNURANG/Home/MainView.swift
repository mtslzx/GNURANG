//
//  MainView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct MainView: View {
    
    enum Campus: String, CaseIterable, Identifiable {
        case 가좌캠, 칠암캠, 통영캠
        var id: Self { self }
    }
    
    enum Cafeteria: String, CaseIterable, Identifiable {
        case 중앙1식당, 아람관, 교육문화1층식당, 교직원식당
        var id: Self { self } // ? uuid?
    }
    
    enum Notice: String, CaseIterable, Identifiable {
        case 기관, 학사, 장학, 학술, 채용
        var id: Self { self }
    }
    
    
    @State var selectedNotice: Notice = .기관
    
    
    @State private var contentHeight: CGFloat = 60
    
    var body: some View {
        NavigationStack {
            //            Rectangle().foregroundColor(Color(UIColor.white)).frame(height: 10)
            //            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                ScrollView {  // Scrollable
                    Group {  // GNU MEAL Group
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                            VStack(alignment: .leading) {
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
                                }
                                Text("오늘의 학식")
                                Spacer()
                                Button {
                                    print("오늘의 학식 더보기")
                                } label: {
                                    HStack {
                                        Spacer()
                                        Text("더보기")
                                        Image(systemName: "chevron.right")
                                    }
                                }
                            }
                            .padding(16)
                            
                        }
                        .frame(height: 200)  // <- Set Widget Height
                        .padding(.horizontal, 16)
                        .padding(.top, 5)
                    }  // End of Meal
                    
                    // NoticeWidgetView(selectedNotice: $selectedNotice)
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
                                        Text("NOTICE")
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
                                    
                                    HStack {  // Category
                                        //                                    Picker(selection: $selectedNotice) {
                                        //                                        <#code#>
                                        //                                    } label: {
                                        //                                        <#code#>
                                        //                                    }
                                        // Spacer()
                                        Button {  // = 기관 버튼 =
                                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                                selectedNotice = .기관
                                            }
                                        } label: {
                                            Text("기관")
                                                .font(.callout)
                                                .foregroundColor(selectedNotice == .기관 ? .accentColor : .primary)
                                                .fontWeight(selectedNotice == .기관 ? .black : .regular)
                                        }
                                        Spacer()  // 힘의 균형을 맞춰보자.
                                        Button {  // = 학사 버튼 =
                                            withAnimation(.spring(response: 0.3, dampingFraction: 0.65)) {
                                                selectedNotice = .학사
                                            }
                                        } label: {
                                            Text("학사")
                                                .font(.callout)
                                                .foregroundColor(selectedNotice == .학사 ? .accentColor : .primary)
                                                .fontWeight(selectedNotice == .학사 ? .black : .regular)
                                        }
                                        Spacer()  // 힘의 균형을 맞춰보자.
                                        .foregroundColor(.primary)
                                        Button {  // = 장학 버튼 =
                                            withAnimation(.spring(response: 0.3, dampingFraction: 0.625)) {
                                                selectedNotice = .장학
                                            }
                                        } label: {
                                            Text("장학")
                                                .font(.callout)
                                                .foregroundColor(selectedNotice == .장학 ? .accentColor : .primary)
                                                .fontWeight(selectedNotice == .장학 ? .black : .regular)
                                        }
                                        Spacer()  // 힘의 균형을 맞춰보자.
                                        Button {  // = 학술 버튼 =
                                            withAnimation(.spring(response: 0.3, dampingFraction: 0.65)) {
                                                selectedNotice = .학술
                                            }
                                        } label: {
                                            Text("학술")
                                                .font(.callout)
                                                .foregroundColor(selectedNotice == .학술 ? .accentColor : .primary)
                                                .fontWeight(selectedNotice == .학술 ? .black : .regular)
                                        }
                                        Spacer()  // 힘의 균형을 맞춰보자.
                                        Button {  // = 채용 버튼 =
                                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                                selectedNotice = .채용
                                            }
                                        } label: {
                                            Text("채용")
                                                .font(.callout)
                                                .foregroundColor(selectedNotice == .채용 ? .accentColor : .primary)
                                                .fontWeight(selectedNotice == .채용 ? .black : .regular)
                                        }
                                        // Spacer()  // 힘의 균형을 맞춰보자.
                                    }
                                    .frame(width: 200)  // Category Selector Frame size
                                    .overlay {  // Category Indicator w. Animation
                                        HStack {  // 막 만들다 보니깐 뭔가 작동하는게 만들어져 버렸다..!
                                            if selectedNotice == .채용 { Spacer() }
                                            if selectedNotice == .학사 {
                                                Spacer()
                                            }
                                            if selectedNotice == .학술 {
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                            }
                                                
                                            Rectangle()  // Indicator Shape
                                                .fill(Color("AccentColor"))
                                                .frame(width: 28, height: 2.6)
                                                .cornerRadius(5)
                                                .offset(y:6)
                                            .frame(maxHeight: .infinity, alignment: .bottom)
                                            if selectedNotice == .학술 {
                                                Spacer()
                                            }
                                            if selectedNotice == .학사 {
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                            }
                                            if selectedNotice == .기관 { Spacer() }
                                            // Spacer()
                                            // Spacer()
                                            // Spacer()
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

                    
                    Group {  // Shortcut Group
                        VStack {
                            HStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("ColorWhite")))
                                VStack {
                                    Button {  // 도서관 출입증 버튼
                                        IDCardView()
                                    } label: {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("AccentColor")))
                                            HStack {
                                                ZStack {
                                                    Circle()
                                                        .fill(Color("ColorWhite"))
                                                        .frame(width: 50, height: 50)
                                                    Image(systemName: "person.text.rectangle.fill")
                                                        .font(.system(size: 28))
                                                        .foregroundColor(Color("AccentColor"))
                                                }
                                                Text("도서관 출입증")
                                                // .font(.headline)
                                                    .fontWeight(.bold)
                                            }
                                            .foregroundColor(Color("ColorWhite"))
                                        }
                                    }
                                    
                                    Button {  // 교내 셔틀버스 버튼
                                        GNUMapView()
                                    } label: {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .strokeBorder(Color("ColorStorke"), lineWidth: 1)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("AccentColor")))
                                            HStack {
                                                ZStack {
                                                    Circle()
                                                        .fill(Color("ColorWhite"))
                                                        .frame(width: 50, height: 50)
                                                    Image(systemName: "bus.fill")
                                                        .font(.system(size: 28))
                                                        .foregroundColor(Color("AccentColor"))
                                                }
                                                Text("교내 셔틀버스")
                                                // .font(.headline)
                                                    .fontWeight(.bold)
                                            }
                                            .foregroundColor(Color("ColorWhite"))
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                        .frame(height: 200)  // <- Set Widget Height
                        .padding(.horizontal, 16)
                        .padding(.top, 5)
                    }  // End of Shortcut
                    
                    
                    
                    Group {  // Notification Group
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("311C"), Color("2192C")]), startPoint: .leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing))
                                .frame(width: 240, height: 150)
                        }
                    }
                    Group {  // Information Group
                        WidgetMeal()
                        WidgetMeal()
                        Group {
                            Text("AA")
                        }
                        Rectangle()
                            .frame(height: 500)
                            .foregroundColor(.white)
                    }
                }
                //                .background(Color.black)
                //            .navigationTitle("GNU").navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("GNU_simple")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("Bell")
                        } label: {
                            Image(systemName: "bell")
                                .foregroundColor(Color("2192C"))
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("Search")
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color("2192C"))
                        }
                    }
                    ToolbarTitleMenu {
                        Text("WLW")
                    }
                }
            }
            .background(Color("ColorBG"))
        }
        
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
