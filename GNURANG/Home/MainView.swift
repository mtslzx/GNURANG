//
//  MainView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct MainView: View {
    
    @State private var contentHeight: CGFloat = 60
    
    var body: some View {
        NavigationStack {
            //            Rectangle().foregroundColor(Color(UIColor.white)).frame(height: 10)
            //            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                ScrollView(showsIndicators: true) {  // Scrollable
                    Group {  // GNU BANNER Group
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                    Image("BannerTest")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                }
                                // .padding(10)
                            }
                        }
                        .frame(height: 120)  // <- Set Widget Height
                        .padding(.horizontal, 16)
                        .padding(.top, 5)
                    }  // End of BANNER
                    
                    Group {  // GNU TODAY Group
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
                                        Text("TODAY")
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
                            }
                            .padding(16)
                            
                        }
                        .frame(height: 200)  // <- Set Widget Height
                        .padding(.horizontal, 16)
                        .padding(.top, 5)
                    }  // End of TODAY
                    
                    MealWidgetView()
                    
                    NoticeWidgetView()

                    
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
