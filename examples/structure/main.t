source "structure.t"
h := &structure.Hello {
    S: "Hello, world!"
}

source "t-lib/std.t"

std.Print(h.S, "\n")