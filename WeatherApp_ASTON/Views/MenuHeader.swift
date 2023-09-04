//
//  MenuHeader.swift
//  WeatherApp_ASTON
//
//  Created by Arina on 04.09.2023.
//

import SwiftUI

struct MenuHeader: View {
    
    @ObservedObject var cityVM: CityVM
    @State private var searchTerm = "Москва"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(
            ZStack(alignment: .leading) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue.opacity (0.3))
            })
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader(cityVM: CityVM())
    }
}
