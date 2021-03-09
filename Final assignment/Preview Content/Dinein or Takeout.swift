//
//  Dinein or Takeout.swift
//  Final assignment
//
//  Created by Yining Wang on 2021-03-08.
//

import SwiftUI

struct Dinein_or_Takeout: View {
    @State private var text:String = ""
    private var houseList:[String] = ["Ryder", "Lower", "Upper", "He"]
    var body: some View {
        VStack{
            List{
                ForEach(0..<houseList.count){ num in
                    Text(houseList[num])
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
