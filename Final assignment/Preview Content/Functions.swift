import Foundation


// GLOBAL Constat variables
let dineInHouse = ["Ryder", "Lower", "Wads"] // Dine in house in March Ten
var earlyTime = ["Ryder", "Lower", "Wads", "Ondaatje", "Matthews", "Uplands"] // Early dinner in March Ten

func dineInOrTakeOut(house:String) -> (type:String, place:String){ // For the border dinner
    let date = "00:00 Wed, 10 Mar 2021"
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm E, d MMM y"
    let marchTen = formatter.date(from: date) ?? Date() // March ten
    let now = Date() // Today
    
    let diffComponents = now.timeIntervalSince(marchTen)
    let timediff = Int(floor(diffComponents / 60 / 60) / 24)
    print(timediff)

    if timediff % 2 == 0 &&  dineInHouse.contains(house){ // Dine in
        // Need to consider the rotation that will happen every two weeks
        return (type:"Dine in", place: "Dining Hall")
    }else{ // Takeout

        return (type:"Takeout", place: house)
    }
}

func getDineTime(house_:String) -> String{  
    if earlyTime.contains(house_){
        // Need to consider the rotation that will happen every two weeks
        return "5:45 - 6:15"
    } else{
        return "6:20 - 70"
    }
}

