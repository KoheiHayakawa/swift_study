println("HelloWorld")

// chapter 2-5: 条件分岐
// switch value binding
let size2 = (4, 10)
switch size2 {
  case (0, 0):
    println("幅高さともに0です。")
  case (5...10, 5...10):
    println("規定サイズです。")
  case (5...10, let height):
    println("高さ\(height)が規格外です。")
  case (let width, 5...10):
    println("幅\(width)が規格外です。")
  default:
    println("幅高さともに規格外です。")
}

// switch fallthrough
var abc: (a: Bool, b: Bool, c: Bool) = (false, false, false)
let fall = "b"
switch fall {
  case "a":
    abc.a = true
    fallthrough
  case "b":
    abc.b = true
    fallthrough
  case "c":
    abc.c = true
    fallthrough
  default:
    println(abc)
}