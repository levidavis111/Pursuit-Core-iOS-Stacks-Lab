import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var stack = stack
    var biggest = 0
    
    while !stack.isEmpty() {
        let a = stack.pop()
        if a! > biggest {
            biggest = a!
        }
    }
    return biggest
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var stack = stack
    var sum = 0
    
    while !stack.isEmpty() {
        let a = stack.pop()
        sum += a!
    }
    
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    var stack = stack
    var secondStack = Stack<T>()
    
    while !stack.isEmpty() {
        let a = stack.pop()
        secondStack.push(element: a!)
    }
    
    return secondStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    var stackOne = stackOne
    var stackTwo = stackTwo
    
    while !stackOne.isEmpty() && !stackTwo.isEmpty() {
        let a = stackOne.pop()
        let b = stackTwo.pop()
        
        if a != b {
            return false
        }
        
    }
    return true
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var stack = stack
    var newStack = Stack<T>()
    var reversedStack = Stack<T>()
    newStack.push(element: newElement)
    
    while !stack.isEmpty() {
        let a = stack.pop()
        reversedStack.push(element: a!)
    }
    
    while !reversedStack.isEmpty() {
        let a = reversedStack.pop()
        newStack.push(element: a!)
    }
    
    return newStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {

   
    return true
    
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

