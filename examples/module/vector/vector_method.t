Vector:Max() int {
    max := .X
    if .Y > max {
        max = .Y
    }
    if .Z > max {
        max = .Z
    }

    return max
}