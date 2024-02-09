<"github.com/oleh-malakan/t-lib/std">

hello string

print() {
    std.Print(hello, "\n")
}

Hello(s string) {
    hello = s
    print()
}

Main() {
    hello = "Hello, world!"
    print()
}