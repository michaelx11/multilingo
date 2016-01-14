object ScannerTest {
  def main(args: Array[String]) {
    for (ln <- io.Source.stdin.getLines) {
      var splitStr : Array[String] = ln.split(" ")
      if (splitStr.length != 2) {
        println("Error: line does not contain two words")
      } else {
        var firstWord : String = splitStr(0)
        var secondWord : String = splitStr(1)
        var spoon1 : String = secondWord.substring(0, 1) + firstWord.substring(1, firstWord.length())
        var spoon2 : String = firstWord.substring(0, 1) + secondWord.substring(1, secondWord.length())
        println(spoon1 + " " + spoon2)
      }
    }
  }
}
