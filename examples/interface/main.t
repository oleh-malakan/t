Move {
    Move(x int, y int)
}

Point {
    X int
    Y int
}

Point:Move(x int, y int) {
    .X += x
    .Y += y
}

MoveToCenter(m @Move) {
    m.Move(0, 0)
}

Main() {
    p := Point{1, 2}
    MoveToCenter(&p)
}