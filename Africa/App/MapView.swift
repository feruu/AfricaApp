//
//  MapView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import SwiftUI
import MapKit

/*
 @State private var region = MapCameraPosition.region(MKCoordinateRegion(
     center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
     span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
     ))
 
 @State private var region : MapCameraPosition.region(MKCoordinateRegion) = {
     var mapLocations = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
     var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
     var mapRegion = (MKCoordinateRegion(center: mapLocations, span: mapZoomLevel))
     return mapRegion
 */
struct MapView: View {
    //MARK: -PROPERTIES
    @State private var region : MKCoordinateRegion = {
        var mapLocations = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapLocations, span: mapZoomLevel)
        return mapRegion
        
    } ()
    let locations : [NaitionaParkLocations] = Bundle.main.decode("locations.json")
    //MARK: -BODY
    var body: some View {
        //MARK: - No1 BASIC MAP
        //Map(coordinateRegion: $region)
        //MARK: - No2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //(A) PIN : OLD STYLE (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            //(B) MARKER: NEW STYLE (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            // (C) CUSTOM BASIC ANNOTATION  (it could be interactive)
           /* MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //ANNotatiOn
            */
            //(D) CUSTOM ADVANCED ANNOTATION (if could be interactive
            MapAnnotation (coordinate: item.location)
            {
                MapAnnotationView(location: item)
            }
        })
        //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
            
                Image("compass")
                    .resizable()
                    .scaledToFit()
                . frame(width: 48, height: 48, alignment: .center)
                
                
                VStack(alignment: .leading, spacing: 3 ){
                    HStack{
                        Text("latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                         
                    }//: HSTACK
                    Divider()
                    //longitude
                    HStack{
                        Text("longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                         
                    }//: HSTACK
                } //: VSTACK
            } //: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}

//MARK: - PREVIEW

#Preview {
    MapView()
}
