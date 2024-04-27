Vector {
    x1 int
    y1 int
    z1 int
    x2 int
    y2 int
    z2 int
}

Vector:[==](v *Vector) bool {
    return false
}

Vector:[!=](v *Vector) bool {
    return false
}

Vector:[<](v *Vector) bool {
    return false
}

Vector:[<=](:v *Vector) bool {
    return false
}

Vector:[>](v *Vector) bool {
    return false
}

Vector:[>=](v *Vector) bool {
    return false
}

QuickSort(arr []@comparable, left int, right int) {

}

Main() {
    arr :<- []int
    QuickSort(arr, 0, len(arr) - 1)
    ~arr

    arr <- []*Vector
    QuickSort(arr, 0, len(arr) - 1)
    ~arr
}
