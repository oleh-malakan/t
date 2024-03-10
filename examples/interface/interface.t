std <github.com/oleh-malakan/t-lib/std> 

Printer {
    Print() 
}

Print(p Printer) {
    p.Print()
}

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

    Print(h)
}