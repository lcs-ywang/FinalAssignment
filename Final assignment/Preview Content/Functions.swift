import Foundation


// GLOBAL Constat variables
let dineInHouse = ["Ryder", "Lower", "Matthews", "Memorial", "Moodie", "Grove"] // Dine in house in March Ten
var earlyTime = ["Ryder", "Lower", "Matthews", "Ondaatje", "Wads", "Uplands"] // Early dinner in March Ten



func dineInOrTakeOut(house:String) -> (type:String, place:String){ // For the border dinner
    let date = "00:00 Mon, 8 Mar 2021"
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm E, d MMM y"
    let marchTen = formatter.date(from: date) ?? Date() // March ten
    let now = Date() // Today
    
    let diffComponents = now.timeIntervalSince(marchTen)
    let timediff = Int(floor(diffComponents / 60 / 60) / 24)

   

    if timediff % 2 == 0 &&  dineInHouse.contains(house){ // Dine in
        // Need to consider the rotation that will happen every two weeks
        
        return (type:"Dine in", place: "Dining Hall")
    }else{ // Takeout

        return (type:"Takeout", place: house)
    }
}

func getDineTime(house_:String) -> String{
    let date = "00:00 Mon, 8 Mar 2021"
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm E, d MMM y"
    let marchTen = formatter.date(from: date) ?? Date() // March ten
    
    let now = Date() // Today
    
    let diffComponents = now.timeIntervalSince(marchTen)
    let timediff = Int(floor(diffComponents / 60 / 60) / 24 / 14)

    if earlyTime.contains(house_){
        // Need to consider the rotation that will happen every two weeks
        if timediff % 2 == 0{ // Week A
            
            return "5:45 - 6:15"
        }else{ // Week B
            
            return "6:20 - 7:00"
        }
    
    }else{
        
        if timediff % 2 == 0 { // Week A
            return "6:20 - 7:00"
        }else{ // Week B
            return "6:20 - 7:00"
        }
    }
}



func dineInOrTakeOutLunch(house:String) -> (type:String, place:String){ // For the border Lunch
    
    if dineInHouse.contains(house){ // Dine in
        // Need to consider the rotation that will happen every two weeks
        return (type:"Dine in", place: "Dining Hall")
    }else{ // Takeout

        return (type:"Takeout", place: "Chapel")
    }
}

func LunchTime(house_:String) -> String{
    if earlyTime.contains(house_){
        // Need to consider the rotation that will happen every two weeks
        return "12:30 - 1:00"
    } else{
        return "1:30 - 2:00"
    }
}
