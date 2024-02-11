<github.com/oleh-malakan/t-lib/std> 

Printer {
    Print() 
}

Hello {
    S string
}

(h Hello) Print() {
    std.Print(h.S, "\n")
}

Print(p Printer) {
    p.Print()
}

Main() {
    h :<- hello.Hello {
        S: "Hello, world!"
    }

    Print(h)
}