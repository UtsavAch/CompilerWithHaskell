fun main() {
    print("Enter a number: ")
    val input = readln()
    var factorial = 1
    var i = 1

    while (i <= input) {
        factorial *= i
        i++
    }

    print("Factorial of $input is $factorial")
}
