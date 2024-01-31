source "out/out.t"

hello := "Hello, world!"
i := 0
loop: 
    out.Print(hello[i])
    if i < 10 {
        i++
        goto loop
    }

out.Print("Hello, world!\n") from Clear