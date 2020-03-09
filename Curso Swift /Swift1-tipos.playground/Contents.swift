import UIKit

var str = "Hello, playground"


/*tipos:
   int, float, double, character, string , bool
*/

//Bool (Boleano) - ocupa apenas um bite na mémoria
var isFirstTime: Bool = true  //explicito
var likesFruits = true  //implicito

// Int (Inteiro)
var age: Int = 26
var newAge = 43
var temperature = -5

// UInt (Unsigned Int - inteiro "não assinado") um tipo especifico que só aceita inteiros positivos
var year: UInt = 44

//Float (Flutuante) - Valores que possuem casas decimais que ocupa 32bit de memoria
var dolar: Float = 4.07

//Double - Valores que possuem casas decimais e ocupa 64bit na memoria
var crazyNumber = 12009.090281912801080

//Character -  É utilizado quando o valor é apenas uma caracter
var genrer: Character = "M" // "F"
var enter: Character = "\n" //refere-se ao exemplo do comando enter que pula linha
var aspas: Character = "\""


//String -  Conjunto de caracteres
var newGender: String = "M"
var studentName = "Dr. Paulo Henrique Bastos"
var newStudentName = "\"Dr.\" Paulo Henrique Bastos"

//Forma de Concatenação de String
let firstName = "Tiago"
let lastName = "Silva"
//let fullName = firstName + " " + lastName
//print(fullName)

//Interpolação de String - uma forma de conectar varias variaveis
let fullName = "\(firstName) \(lastName) - Idade: \(age) anos"
print(fullName)
