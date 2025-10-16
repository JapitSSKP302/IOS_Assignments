/*:
## Exercise - Create Closures
 
 Create a closure assigned to a constant `blankClosure` that has no parameters and no return value.
 */
let blankClosure = {()->Void in
    print("This blank closure will not return anything")
}

//:   Create a closure assigned to a constant `fourClosure` that has no parameters and returns an `Int`. The body of the closure should always return the value 4. Call the closure four times.
let fourClosure = {()->Int in
    return 4
}

let num = fourClosure()
let num2 = fourClosure()
let num3 = fourClosure()
let num4 = fourClosure()
//:  Create a closure assigned to a constant `greeting` that accepts a `name` string argument with no return value. Within the body of the closure, print the argument. Call the closure four times using "Gary", "Jane", "Rick", and "Beth" as arguments.
let greeting = {(name: String) -> Void in
    print(name)
}

let name1: Void = greeting("Gary")
let name2: Void = greeting("Jane")
let name3: Void = greeting("Rick")
let name4: Void = greeting("Beth")


/*:
page 1 of 3  |  [Next: Exercise - Passing Closures as Arguments and Syntactic Sugar](@next)
 */
