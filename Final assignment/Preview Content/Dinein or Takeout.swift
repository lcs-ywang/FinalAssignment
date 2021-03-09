//
//  Dinein or Takeout.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-08.
//

import SwiftUI

struct Dinein_or_Takeout: View {
    @State private var text:String = ""
    private var houseList:[String] = ["Ryder", "Lower", "Upper", "Matthew", "Cooper", "Rashleigh"]
    var body: some View {
        VStack{
            Text("Dine in \nor Take out")
            Divider()
            SearchBarView(text: $text)
            
            List{
                ForEach(0..<houseList.count){ num in
                    
                    if text == "" || houseList[num].contains(text){ // if contain search bar text
                        NavigationLink(destination: Text("SUCK MY PP")){
                            Text(houseList[num])
                        }
                        
                    }
                }
            }
            Spacer()
        }
    }
}

struct Dinein_or_Takeout_Previews: PreviewProvider {
    static var previews: some View {
        Dinein_or_Takeout()
    }
}
