import Foundation


// GLOBAL Constat variables
let dineInHouse = ["Ryder", "Lower", "Wads"] // Dine in house in March Ten
var earlyTime = ["Ryder", "Lower", "Wads"] // Early dinner in March Ten

func dineInOrTakeOut(house:String) -> (type:String, place:String){ // For the border dinner
    var someDate = DateComponents() // March Ten Placeholder
    someDate.month = 3
    someDate.day = 10
    someDate.hour = 12
    someDate.minute = 0
    let now = Date() // Today's Date
    
    let marchTen = Calendar.current.date(from: someDate)! // Define the date march ten
    let diffComponents = Calendar.current.dateComponents([.hour, .minute, .second, .day], from: marchTen, to: now)
    
    let timediff = diffComponents.day!
    
    if timediff % 2 == 0 &&  dineInHouse.contains(house){ // Dine in
        return (type:"Dine in", place: "Dining Hall")
    }else{ // Takeout

        return (type:"Takeout", place: house)
    }
}

func getDineTime(house_:String) -> String{  
    if earlyTime.contains(house_){
        return "5:45 - 6:15"
    } else{
        return "6:20 - 70"
    }
}

