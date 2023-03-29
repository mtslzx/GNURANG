//
//  GNUMapView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/07.
//

import SwiftUI
import MapKit

struct GNUMapView: View {
    @State private var isSheetShowing = false
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.155469, longitude: 128.0962563), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
            VStack {
                Spacer()
                Button {  // Map Search Modal Button
                    isSheetShowing = true
                    print("Pressed")
                } label: {
                    /// If you have a destination you set, I want to make the letters appear.
                    Image(systemName: "map.fill")
                        .font(.system(size: 22))
                        .padding(16)
                        .background(.thickMaterial)
                        .cornerRadius(100)
                        .frame(width: 150, height: 150)
                }
            }

        }
        .sheet(isPresented: $isSheetShowing) {
            mapSearchSheet
        }
    }
    
    var mapSearchSheet : some View {
        VStack {
            HStack {  // 돋보기를 따로 빼기 위해서 이렇게 제작함
                Image(systemName: "magnifyingglass")
                TextField(" 건물 번호나 학과 이름 등을 검색해보세요.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            }
                .padding(12)
                .background(.thickMaterial)
                .cornerRadius(10)
                .padding(16)
            Image(systemName: "map")
                .resizable()
                .scaledToFit()
                .frame(height: 68)
            
            Text("MapSearchSheet")
                .padding(.top)
            
            Button {
                isSheetShowing = false
            } label: {
                Text("목적지 선택 혹은 닫기를 누를 경우 지도로 돌아가기")
            }

            Spacer()
        }
        .presentationDetents([.medium, .large])  // This set Sheet's Height
    }
}

struct GNUMapView_Previews: PreviewProvider {
    static var previews: some View {
        GNUMapView()
    }
}
