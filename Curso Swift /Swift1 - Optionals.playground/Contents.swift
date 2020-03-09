import UIKit

var str = "Hello, playground"


//Optionals - Um tipo/objeto que pode ou nao ter um valor

var driverLicense: Int?

// Atribuindo uma variável optional um valor qualquer
driverLicense = 332441231 //CUIDADO, se nao atribuir o valor e usar o ! para retirar optional pode crashar o app.

print("A minha carteira de motorista é:", driverLicense)
print("A minha carteira de motorista é:", driverLicense!) //desembrulhando optional, conhecido como unwrap.

//Optional Binding - Desembrulhar um optional de uma maneira segura
if let driverL = driverLicense{
    print("A minha carteira de motorista é:", driverL)
} else{
  print("Não possuo carteira de motorista")
}

//exemplo
let adressNumber = Int("100") //esta passando 100 de STRING para INT
if let adressNumber = adressNumber{
    print(adressNumber)
}

//Nil Coalising Operator (Operador de coalescencia nula) - Operador que consegue colocar nos 2 lados dele um valor que pode ser nulo em um lado e no outro o valor que voce quer receber
let number: String = "578"
let adressNumber2 = Int(number)  ?? 0 //?? -> operador de coalescencia nula

//Implicit Unwrapped Optionals
var name: String!
name = "Teste"
print(name!) //ele deixa o Optional Implicito
print(name.count)

//outro exemplo usando um if/else
if name != nil{
    print(name!)
}else{
    print("É nulo")
}
