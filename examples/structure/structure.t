<github.com/oleh-malakan/t-lib/std>

Hello {
    S string
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    std.Print(h.S, "\n")
}