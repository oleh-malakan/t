hello {
    s string
}

h := &hello {
    s: "Hello, world!"
}

source "t-lib/std.t"

std.Print(h.s, "\n")