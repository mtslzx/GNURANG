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
            
            VStack(alignment: .leading, spacing: 10) {
                List(0..<100) {
                    Text("Row \($0)")
                }
            }
//            .navigationTitle("GNU").navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("GNU_simple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell")
                        .foregroundColor(Color("2192C"))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("2192C"))
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
