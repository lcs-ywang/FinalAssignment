//
//  SwiftUIView.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-21.
//

import SwiftUI

struct SwiftUIView: View {
    
    @ObservedObject var dataStore: Store
    
    var body: some View {
        List {
            
            // Iterate over the subjects
            ForEach(Array(dataStore.Houses.keys.sorted()), id: \.self) { house in
                
                // Pass the courses for this subject area to the next view
                
            }
            
        }
        .navigationTitle("Subjects")
        
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(dataStore: testStore)
    }
}



