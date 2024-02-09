<"github.com/oleh-malakan/t-lib/std">
<"color">

print(s string) {
    std.Print(s)
}

Main() {
    print("Hello, world!\n")

    color.Print("Hello, world!\n", 255, 255, 255)
}