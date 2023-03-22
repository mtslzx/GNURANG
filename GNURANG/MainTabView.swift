//
//  MainTabView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI




struct MainTabView: View {
    // Variables needed to bring up a sheet in the Tabbar
    @State var isSheetShowing = false
    @State private var selectedItem = 1
    @State private var lastSelectedItem = 1  // When the sheet is floated, the variable required to launch the last item on the background
    
    var body: some View {
        TabView(selection: $selectedItem) {
            MainView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                        .renderingMode(.template)
                        .foregroundColor(Color("311C"))
                    Text("지누랑!")
                }.tag(1)
            GNUMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("교내지도")
                }.tag(2)
            Text("출석체크 오버레이뷰")
                .tabItem {
                    Image(systemName: "clock")
                    Text("출석체크")
                }.tag(3)
            TimeTableView()
                .tabItem {
                    Image(systemName: "questionmark.app.dashed")
                    Text("시간표?")
                }.tag(4)
            IDCardView()
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                        .foregroundColor(Color("311C"))
                    Text("{name}")
                }.tag(5)
            // paytestView()
            //     .tabItem {
            //         Text("WOW")
            //     }
        }
        .toolbarBackground(.red, for: .automatic)
        .onChange(of: selectedItem) {    // Logic that floats sheet Thx for StackOverFlow
            if 3 == selectedItem {
                self.isSheetShowing = true
                self.selectedItem = self.lastSelectedItem
            } else if (isSheetShowing == false) {
                self.lastSelectedItem = $0
            }
        }
        .sheet(isPresented: $isSheetShowing) {
            testSheet
        }
    }
    
    var testSheet : some View {
        VStack {
            Image(systemName: "clock")
                .resizable()
                .scaledToFit()
                .frame(height: 68)
            
            Text("출석체크!")
                .padding(.top)
        }
        .presentationDetents([.medium, .large])  // This set Sheet's Height
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
