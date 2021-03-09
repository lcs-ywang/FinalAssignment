//
//  HouseDineDetailView.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-08.
//

import SwiftUI

struct HouseDineDetailView: View {
    var hosue:String = "Ryder"
    
    var body: some View {
        VStack{
            Form{
                Section(header:Text("Ryder's Lunch")){
                    Text("Type: ")
                    Text("Time: ")
                    Text("Place: ")
                }
                
                Section(header: Text("Ryder's Dinner")){
                    Text("Type: ")
                    Text("Time: ")
                    Text("Place: ")
                }
                
            }
        }
    }
}

struct HouseDineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HouseDineDetailView()
    }
}
