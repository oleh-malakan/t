print(greeting {
        print() 
    }) {
    greeting.print()
}

source "file://../entity" entity
h :<- entity.Hello {
    S: "Hello, world!"
}

source "https://github.com/oleh-malakan/t-lib.git" std

(h entity.Hello) print() {
    std.Print(h.S, "\n")
}

print(h)