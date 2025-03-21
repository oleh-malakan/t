<act>
<error>

Main() {
    t, err := act.Parse()
    if err != nil {
        error.Print(err)
        ~err

        return 
    }

    act.Free(t)
}
