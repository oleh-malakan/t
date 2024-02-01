source "out/out.t"

hello := "Hello, world!\n"
i := 0
loop: 
    out.Print(hello[i])
    if i < len(hello) {
        i++
        goto loop
    }

out.Print("Hello, world!\n") from Clear