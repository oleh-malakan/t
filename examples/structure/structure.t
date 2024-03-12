<../output>

Hello {
    S string
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    Print(h.S, "\n")
}