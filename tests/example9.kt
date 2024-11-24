fun main() {
    val maxTries = 3
    var attempts = 0
    var success = false
    var abccccc = "bsajbckcs"

    while (attempts < maxTries && !success) {
        println("Enter a number between 1 and 10:")
        val input = readln()
        
        if (input == "1") {
            val successMessage = "You entered a valid number!"
            println(successMessage)
            success = true
        } else {
            val errorMessage = "Invalid input, try again."
            println(errorMessage)
        }
        attempts++
    }

    if (success) {
        val finalMessage = "Thank you for following instructions."
        println(finalMessage)
    } else {
        val finalMessage = "You've used all attempts."
        println(finalMessage)
    }
}
