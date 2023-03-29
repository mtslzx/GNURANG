//
//  AccountView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/26.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            HStack {  // Profile
                Circle()  // Profile Frame
                    .strokeBorder(Color("ColorStorke"), lineWidth: 2, antialiased: true)
                    .foregroundColor(.white).opacity(100)
                    .background{
                        Image("GNU_default")  // Profile Image
                            .resizable()
                            .scaledToFit()
                            .mask(Circle())
                    }
                    .scaledToFit()
                Text("하일환")  // Profile Name
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(16)  // Inset Padding
            .background {  // Stroke
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(Color("ColorGray"), lineWidth: 1)
            }
            .frame(height: 140)
            .padding(.horizontal)  // Safe Margin
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
