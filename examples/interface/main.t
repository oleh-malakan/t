greeting {
    print() 
}

print(g greeting) {
    g.print()
}

hello {
    s string
}

h := &hello {
    s: "Hello, world!"
}

source "github.com/oleh-malakan/t-lib/std.t"

(h *hello) print() {
    std.Print(h.s, "\n")
}

print(h)