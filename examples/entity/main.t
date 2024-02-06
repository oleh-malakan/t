source entity
h := entity.Hello {
    S: "Hello, world!"
}

source "github.com/oleh-malakan/t-lib" std
std.Print(h.S, "\n")