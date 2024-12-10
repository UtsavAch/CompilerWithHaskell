fun main() {
    var maxTries : Int = 3
    var attempts : Int = 0
    var success : Bool = false

    while (attempts < maxTries) {        
        if (maxTries == 1) {
            println(success)
            if(success != true) if(success == false) success = false else success = false
        } else {
            success = true
        }
        attempts = attempts + 1
        println(attempts)
    }
}
