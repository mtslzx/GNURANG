//
//  LanguageSelectorView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

import SwiftUI

struct LanguageSelectorView: View {
    @State var lang:String = "ko_KR"
    
    var body: some View {
        VStack {
            Picker(selection: .constant("ko_KR"), label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                Text("한국어").tag("ko_KR")
                Text("English (NOT READY)").tag("en_US")
            }
            .pickerStyle(.segmented)
            .padding(16)
            
            Spacer()  // Make it top
        }
        
        .navigationTitle(Text("언어 선택"))
        .navigationBarTitleDisplayMode(.large)
    }
}

struct LanguageSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectorView()
    }
}
