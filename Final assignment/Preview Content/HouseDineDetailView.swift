//
//  HouseDineDetailView.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-08.
//

import SwiftUI

struct HouseDineDetailView: View {
    @State var house:String = ""
    
    var body: some View {
        VStack{
            Form{
                Section(header:Text("\(house)'s Lunch")){
                    Text("Type: ")
                    Text("Time: ")
                    Text("Place: ")
                }
                
                Section(header: Text("\(house)'s Dinner")){
                    Text("Type: \(dineInOrTakeOut(house: house).0)")
                    Text("Time: \(getDineTime(house_: house))")
                    Text("Place: \(dineInOrTakeOut(house: house).1)")
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
