//
//  MainView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            //            Rectangle().foregroundColor(Color(UIColor.white)).frame(height: 10)
            //            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                ScrollView {
                    Group {  // Banner Group
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("311C"), Color("2192C")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                .frame(width: 240, height: 150)
                        }
                    }
                    Group {  // Notification Group
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("311C"), Color("2192C")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
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
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
