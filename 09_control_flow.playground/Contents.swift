import UIKit

//Bucle for-in

let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog":4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName), número de patas: \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 0..<power{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

//Bucle While

var i = 0
while i <= 10 {
    i += 1
}
print(i)

repeat {
    i += 1
} while i <= 10

print(i)

// If y Else
var temp = 30
if temp <= 15{ //temp <= 15
    print("Hace frío! Enciende la calefacción")
}else if temp >= 25{//temp > 25
    print("Hace calor! Encendamos el aire acondicionado")
}else{// 15 < temp < 25
     print("La sensación térmica es agradable. No hace falta modificarla")
}


//Switch/Case

let someCharacter: Character = "Z"
switch someCharacter {
    case "a", "A":
        print("Es la primera letra del alfabeto")
    case "z", "Z":
        print("Es la última letra del alfabeto")
    default:
        print("Es alguna otra letra")
}


let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1, 2, 3, 4:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchiiiiisimas"
}
print("\(naturalCount) \(phrase)")


let somePoint = (5,-8)
switch somePoint {
case (0,0):
    print("El punto \(somePoint) es el origen de coordenadas")
case (_, 0):
    print("El punto \(somePoint) se halla sobre el eje de las X")
case (0, _):
    print("El punto \(somePoint) se halla sobre el eje de las Y")
case (-2...2, -2...2):
    print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoint) está en algún otro lado")
}


let anotherPoint = (5,-2)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las X, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las Y, con valor \(y)")
case let (x,y) where x == y:
    print("El punto se halla sobre la recta x = y")
case let (x,y) where x == -y:
    print("El punto se halla sobre la recta x = -y")
case let (x,y):
    print("En algún otro lugar del plano, en (\(x), \(y))")
}

let anotherCharacter: Character = " "
switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("Se trata de una vocal")
case "b", "c", "d", "f", "g"://TODO: acabar con el resto del abecedario (solo consonantes)
    print("Se trata de una consonante")
default:
    print("Se trata de un caracter no vocal ni consonante (minúscula)")
}

let stillAnotherPoint = (0,5)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    break
}


//Control Transfer Sentences - continue, break, fallthrough, return, throw

let sentence = "las mentes grandes piensan igual"
var filteredSentence = ""
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]
for ch in sentence{
    if charactersToRemove.contains(ch){
        continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentence


let integerToDescribe = 5
var description = "El número \(integerToDescribe) es"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un número primo, y"
    fallthrough
default:
    description += " un número entero."
}
print(description)

var people = ["name": "Juan Gabriel", "age": 31, "isMale": true] as [String : Any]

func testUserValidation(person:[String: Any]){
    guard let surname = person["surname"] else{
        print("El apellido es desconocido")
       return
    }
    //aquí existe surname
    print(surname)
    guard let age = person["age"] else{
        print("La edad es desconocida")
        return
    }
    print("La edad de la persona es \(age)")
}

people["surname"] = "Gomila"
testUserValidation(person: people)

if #available(iOS 12, macOS 10.12, *){
    //Ejecutar las acciones a lo iOS12+, a los macOS12+
}else{
    //Mantener el código viejo con versiones anteriores de iOS, macOS...
}
