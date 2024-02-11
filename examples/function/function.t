<github.com/oleh-malakan/t-lib/std>
<color>

Print(s string) {
    std.Print(s)
}

Hello {
    S string
}

(h Hello) Print() {
    std.Print(h.S, "\n")
}

Main() {
    Print("Hello, world!\n")

    h :<- Hello {
        S: "Hello, world!"
    }
    h.Print()
    
    color.Print("Hello, world!\n", 255, 255, 255)
}