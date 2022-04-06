/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */






/*struct Computer{
    var ram: Int?
    var yearManufactured: Int?
    
    init?(ramInput:Int?, yearInput:Int?){
        if let ram = ramInput{
            if ramInput! > 0{
                print("ram passed")
                print(ram)
                self.ram = ramInput
            }
        }
        else{
            print("ram invalid")
            return nil
        }
        if let yearManufactured = yearInput{
            if yearInput! > 1970 && yearInput! < 2020{
                print("year passed")
                print(yearManufactured)
                self.yearManufactured = yearInput
            }
        }
        else{
            print("year invalid")
            return nil
        }
    }
    
}

var abc = Computer(ramInput: 32, yearInput: 1995)
print(abc?.ram)
print(abc?.yearManufactured)

print("")

abc = Computer.init(ramInput: 485, yearInput: 9999)
print(abc?.ram)
print(abc?.yearManufactured)

print("")

abc = Computer.init(ramInput: -3, yearInput: 2001)
print(abc?.ram)
print(abc?.yearManufactured)
*/
//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.


/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
