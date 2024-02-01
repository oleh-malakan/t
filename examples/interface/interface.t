print(greeting {
        print() 
    }) {
    greeting.print()
}

source structure/structure
h := &structure.Hello {
    S: "Hello, world!"
}

source t-lib/std

(h *structure.Hello) print() {
    std.Print(h.S, "\n")
}

print(h)