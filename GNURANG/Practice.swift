//
//  Practice.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        NavigationStack {
            List(0..<100) {
                Text("Row \($0)")
            }
            .navigationTitle("100 Rows")
            
            .toolbarBackground(.teal)
        }
    }
}

struct MyView: View {

//    init() {
//        let navBarAppearance = UINavigationBarAppearance()
//        navBarAppearance.shadowImage = UIImage()
//        navBarAppearance.shadowColor = .clear
//        navBarAppearance.backgroundColor = UIColor.red
//        UINavigationBar.appearance().standardAppearance = navBarAppearance
//        UINavigationBar.appearance().compactAppearance = navBarAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//    }

    var body: some View {
        NavigationStack {
            VStack {
                Rectangle().foregroundColor(Color(UIColor.red)).frame(height: 20)
                Spacer()
                List(0..<100) {
                    Text("Row \($0)")
                }
                .navigationTitle("100 Rows")
                .toolbarBackground(.teal)
                
            }
        }
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
//        Practice()
    }
}
