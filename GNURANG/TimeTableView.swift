//
//  TimeTableView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/07.
//

import SwiftUI

struct TimeTableView: View {
    var body: some View {
        List(0..<100) {
            Text("Row \($0)")
        }
    }
}

struct TimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTableView()
    }
}
