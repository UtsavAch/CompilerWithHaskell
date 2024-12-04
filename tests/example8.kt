fun main() {
    print("Enter a number: ")
    // var input: Int = readln() -- Need to fix this issue in semantics
    var factorial: Int = 1
    var i: Int = 1

    // while (i <= input) {
    while (i <= 10) {
        factorial *= i
        i++
    }

    print("Factorial is some num")
}
