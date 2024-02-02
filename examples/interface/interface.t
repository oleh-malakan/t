print(greeting {
        print() 
    }) {
    greeting.print()
}

source "file://../structure" structure
h := &structure.Hello {
    S: "Hello, world!"
}

source "https://github.com/oleh-malakan/t-lib.git" std

(h *structure.Hello) print() {
    std.Print(h.S, "\n")
}

print(h)