fun main() {
    var maxTries = 3
    var attempts = 0
    var success = false
    var abccccc = "bsajbckcs"

    while (attempts < maxTries && !success) {
        println("Enter a number between 1 and 10:")
        var input = readln()
        
        // Conditional expression with arithmetic comparison
        if (input == 1) {
            println("You entered a valid number!")
            success = 6
            if(success == true) if(success == false) success = false else success = false
        } else {
            println("Invalid input, try again.")
        }
        attempts++
    }

    // Final result based on the success of the loop
    if (success) {
        println("Thank you for following instructions.")
    } else {
        println("You've used all attempts.")
    }
}
