<github.com/oleh-malakan/t-lib/std>

Hello {
    S string
}

(h Hello) Print() {
    std.Print(h.S, "\n")
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    h.Print()
}