fun main() {
    var a : Bool = true
    var b : Bool = false
    a += 1
    a += b
    a -= b
    b *= a
    a /= b
    var orResult : Bool = a || b
    var notResult : Bool = !a
}
