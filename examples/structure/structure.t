<github.com/oleh-malakan/t-lib/std>

Hello {
    S string
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    Print(h.S, "\n")
}