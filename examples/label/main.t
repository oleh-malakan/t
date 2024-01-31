source "github.com/oleh-malakan/t-lib/std.t"

print(s string) {
CLEAR:
    std.Clear()
main:
    std.Print(s)
}

hello := "Hello, world!"
i := 0
LOOP: 
    print(hello[i])
    if i < 10 {
        i++
        goto LOOP
    }

print("Hello, world!\n") from CLEAR