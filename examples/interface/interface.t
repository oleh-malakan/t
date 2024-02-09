<"github.com/oleh-malakan/t-lib/std"> 
<"../entity/hello">

print(greeting {
        print() 
    }) {

    greeting.print()
}

(h hello.Hello) print() {
    std.Print(h.S, "\n")
}

Main() {
    h :<- hello.Hello {
        S: "Hello, world!"
    }

    print(h)
}