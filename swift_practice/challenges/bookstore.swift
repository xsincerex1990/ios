func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    var strResult: String = ""
    for cat in listOfCat {
        var quantities = 0
        for book in listOfArt {
            if String(book[book.startIndex]) == cat {
                var codeArr = book._split(separator: " ")
                var codeInt = Int(codeArr[1])
                quantities += codeInt!
                strResult += "(\(cat) : \(quantities) - "
            }
        }
    }
    return strResult                                    
}
