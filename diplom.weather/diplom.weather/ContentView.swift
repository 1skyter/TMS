//
//  ContentView.swift
//  diplom.weather
//
//  Created by Rodion Trach on 14.03.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 40)
        } .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6050886512, green: 0.8078318238, blue: 0.9820488095, alpha: 1)), Color(#colorLiteral(red: 0.4807307124, green: 0.6169118881, blue: 0.9509082437, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
