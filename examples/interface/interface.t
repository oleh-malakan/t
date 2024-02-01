print(greeting {
        print() 
    }) {
    greeting.print()
}

source "structure/structure.t"
h := &structure.Hello {
    S: "Hello, world!"
}

source "t-lib/std.t"

(h *Hello) print() {
    std.Print(h.S, "\n")
}

print(h)