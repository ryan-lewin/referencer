//
//  ContentView.swift
//  referencer
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var spiderDir: SpiderDirectory
    var body: some View {
        NavigationView {
            MasterView(spiderDir: spiderDir)
                .navigationBarTitle("Spiders")
        }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(spiderDir: SpiderDirectory())
    }
}

