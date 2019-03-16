func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

calculator(n1: 7, n2: 7){$0 * $1}

