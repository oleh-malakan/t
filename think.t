someFunc(
    a int, // a = Value
    b *int, // b <- Pointer
    c @comparable // c <- Interface
) {}

think() {
    a1 int 
    a1 = 5

    if a1 == 4 {

    }

    a2 *int 
    a2 <- int(4)
    a2 = a1

    if &a2 != nil && a2 == 4 {

    }

    a3 :<- a1

    a4 **int
    a4 <- &a2

    c1 @comparable
    c1 <- a1

    if &c1 != nil && c1 == 5 {

    }

    c2 @comparable
    c2 <- a2

    someFunc(a2, a1, c2)

    b1 *@comparable
    b1 <- &a1

    someFunc(a2, a1, *b1)

    ~a2
}
