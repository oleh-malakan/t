<../output>

Hello {
    S string
}

(h Hello) Print() {
    Print(h.S, "\n")
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    h.Print()
}