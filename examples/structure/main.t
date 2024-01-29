hello {
    s string
}

h := &hello {
    s: "Hello, world!"
}

source "github.com/oleh-malakan/t-lib/std.t"

std.Print(h.s, "\n")