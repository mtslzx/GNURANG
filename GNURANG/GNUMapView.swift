//
//  GNUMapView.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/07.
//

import SwiftUI
import MapKit

struct GNUMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.155469, longitude: 128.0962563), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct GNUMapView_Previews: PreviewProvider {
    static var previews: some View {
        GNUMapView()
    }
}
