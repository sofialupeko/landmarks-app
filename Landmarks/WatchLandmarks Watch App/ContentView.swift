//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Lupeko Sofia on 15.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
