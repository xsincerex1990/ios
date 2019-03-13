class degenerates {
    var names = ["Joe", "James", "Juan", "Pedro", "Murphy"]

    func showNames() {
        print(names)
    }

    func sortNames() {
        //In this case we can sort like this because swift automatically assumes u want string implementation
        //let sortedDegenerates = names.sorted(by: <)

        //swift provides shorthand argument names...swift will infer from the expected function type
        let sortedDegenerates = names.sorted(by: {$0 < $1})
        print(sortedDegenerates)
    }
}
let ins = degenerates()

ins.sortNames()
