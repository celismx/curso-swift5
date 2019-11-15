import UIKit

class Person {
    var residence: Residence?
}

class Residence{
    var rooms = [Room]()
    var numberOfRooms : Int {
        return rooms.count
    }
    subscript(i: Int) -> Room{
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    var address: Address?
    
    
    func printNumberOfRooms(){
        print("El número de habitaciones es \(numberOfRooms)")
    }
}

class Room{
    let name: String
    init(name: String){
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String?{
        if let buildingNumber = buildingNumber, let street = street{
            return "\(buildingNumber), \(street)"
        }else if buildingName != nil{
            return buildingName
        } else{
            return nil
        }
    }
}



let edgar = Person()

if let roomCount = edgar.residence?.numberOfRooms{
    print("La casa de Edgar tiene \(roomCount) habitación(es)")
}else{
    print("Edgar no tiene casa")
}


func createAddress() -> Address{
    print("La función ha sido llamada")
    
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Calle de Platzi"
    
    return someAddress
}

edgar.residence?.address = createAddress()
edgar
edgar.residence?.printNumberOfRooms()

if edgar.residence?.printNumberOfRooms() != nil{
    print("He podido obtener el número de habitaciones")
} else{
    print("NO ha sido posible saber el número de habitaciones")
}


if (edgar.residence?.address = createAddress()) != nil {
    print("Ha sido posible configurar la dirección de Edgar")
} else {
    print("Seguimos sin saber donde vive Edgar")
}


if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitación es de \(firstRoomName)")
}else{
    print("La primera habitación no sabemos de quien es")
}

edgar.residence?[0] = Room(name: "Bathroom")

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name:"Bathroom"))
edgarHouse.rooms.append(Room(name:"Living Room"))
edgarHouse.rooms.append(Room(name:"Kitchen"))
edgar.residence = edgarHouse

if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitación es de \(firstRoomName)")
}else{
    print("La primera habitación no sabemos de quien es")
}

edgar.residence?.address = createAddress()

if let edgarStreet = edgar.residence?.address?.street{
    print("La casa de Edgar está en la calle \(edgarStreet)")
}else{
    print("No se donde vive Edgar")
}
edgar


if let buildingIdentifier = edgar.residence?.address?.buildingIdentifier(){
    print("Edgar vive en \(buildingIdentifier)")
}

if let _ = edgar.residence?.address?.buildingIdentifier()?.hasPrefix("13"){
    print("Edgar vive en el número 13")
} else{
    print("Edgar no vive en el número 13")
}
