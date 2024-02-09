<github.com/oleh-malakan/t-lib/std>
<color>

print(s string) {
    std.Print(s)
}

Hello {
    S string
}

(h Hello) print() {
    std.Print(h.S, "\n")
}

Main() {
    print("Hello, world!\n")

    h :<- hello.Hello {
        S: "Hello, world!"
    }
    h.print()
    
    color.Print("Hello, world!\n", 255, 255, 255)
}