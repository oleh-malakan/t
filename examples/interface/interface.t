output <../output> 

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
    output.Print(h.S, "\n")
}

Main() {
    h :<- Hello {
        S: "Hello, world!"
    }

    Print(h)
}