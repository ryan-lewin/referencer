//
//  MasterView.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var spiderDir: SpiderDirectory
    
    var body: some View {
        List {
            // Loops through array off spiders stored in SpiderDir
            ForEach(spiderDir.spiders) { spider in
                SpiderRowView(spider: spider)
            }.onDelete { indices in indices.forEach { self.spiderDir.spiders.remove(at: $0) } }
        }
    }
}
