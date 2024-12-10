fun main() {
    print("Enter a number")
    var factorial: Int = 1
    var i: Int = 1
    var check : Bool = true

    while (i <= 10) {
        factorial *= i
        i++
        factorial--
        check--
    }
}
