//
//  HouseDineDetailView.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-08.
//

import SwiftUI

struct HouseDineDetailView: View {
    @State var house:String = ""
    @State private var info:Times?
    
        var body: some View {

        VStack{
            Form{
                
                
                Section(header:Text("\(house)'s Breakfast")){
                    Text("Type: \(dineInOrTakeOutLunch(house: house).0)")
                    Text("Time: \(LunchTime(house_: house))")
                    Text("Place: \(dineInOrTakeOutLunch(house: house).1)")
                }
                Section(header:Text("\(house)'s Lunch")){
                    Text("Type: \(dineInOrTakeOutLunch(house: house).0)")
                    Text("Time: \(LunchTime(house_: house))")
                    Text("Place: \(dineInOrTakeOutLunch(house: house).1)")
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
