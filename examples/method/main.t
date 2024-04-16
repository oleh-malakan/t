Vector{
    X int
    Y int
    Z int
}

Vector:Max() int{
    max := .X
    if .Y > max {
        max = .Y
    }
    if .Z > max {
        max = .Z
    }

    return max
}

Main() {
    v1 := Vector{
        X: 1
        Y: 2
        Z: 3
    }

    max := v1.Max()
}