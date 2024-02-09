<"github.com/oleh-malakan/t-lib/std">
<"hello">

Main() {
    h :<- hello.Hello {
        S: "Hello, world!"
    }

    std.Print(h.S, "\n")
}