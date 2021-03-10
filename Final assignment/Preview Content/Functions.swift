import Foundation


func dineInOrTakeOut(house:String) -> String{ // For the border dinner
    var someDate = DateComponents() // March Ten Placeholder
    someDate.month = 3
    someDate.day = 10
    someDate.hour = 12
    someDate.minute = 0
    let now = Date() // Today's Date
    
    let marchTen = Calendar.current.date(from: someDate)! // Define the date march ten
    let diffComponents = Calendar.current.dateComponents([.hour, .minute, .second, .day], from: marchTen, to: now)
    
    let timediff = diffComponents.day!
    
    let dineInHouse = ["Ryder", "", ""]
    if timediff % 2 == 0 &&  dineInHouse.contains(house){ // Dine in

        return "Dine in";
    }else{ // Takeout

        return "Take out";
    }
}

