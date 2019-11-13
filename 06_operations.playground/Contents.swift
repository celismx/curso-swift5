import UIKit

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

//let 2 = z

if a == b {
  print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

//D/d -> D == d*c+r
9/4 //c
9%4 //r

9 == 4*2+1


-9%4 // -9 == -2*4 + (-1)

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Ricardo Celis"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")

("perro", false) == ("perro", true)

/*
 if question {
    answer1
 } else{
    answer2
 }
 */




let contentHeight = 40
var hasImage = true
var rowHeight = 0

rowHeight = contentHeight + (hasImage ? 50 : 10)




let defaultAge = 18
var userAge: Int?

userAge = 31

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName

for idx in 1...5 {
    print(idx)
}

for idx in 1..<5{
    print(idx)
}

let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count{
    print("La persona \(i+1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[..<2]{
    print(name)
}

let range = ...5 // -infinity...5
range.contains(7)
range.contains(4)
range.contains(-2)


let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}


let enterDoorCode = false
let passRetinaScan = true

if enterDoorCode && passRetinaScan { //AND
    print("Bienvenido a la empresa")
}else{
    print("ACCESO DENEGADO")
}

let hasMoney = false
let hasInvitation = false
if hasMoney || hasInvitation{ //OR
    print("Bienvenido a la fiesta!")
} else{
    print("No eres bienvenido aquí...")
}


if enterDoorCode && passRetinaScan ||
    hasMoney || hasInvitation{
    print("Has entrado")
} else{
    print("Acceso denegado")
}
