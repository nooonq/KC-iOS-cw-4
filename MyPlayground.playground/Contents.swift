import UIKit

var name = "Nourah"
var birthYear = 2005
var currentYear = 2022
var age = currentYear - birthYear

 

print("Hello my name is \(name) and im \(age) years old.")

if age >= 14 && age <= 18  {
print("يمكنك المشاركة في الكويت تبرمج")
}
else  {
    
    print("لا يمكنك المشاركة في الكويت تبرمج")
}


var textNumber = "8"
var number = 4
var doubleNumber : Double

doubleNumber = (Double(textNumber) ?? 0) + Double(number)
