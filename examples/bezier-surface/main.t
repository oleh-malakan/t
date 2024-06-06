Float {float32 | float64}

Matrix[T Float] {
    arr [][]T
}

Matrix [%i *int]() (T%, T%, T%) {
    return arr[i][0], arr[i][1], arr[i][2]
}

Matrix [%i *int](%x *T, %y *T, %z *T) {
    arr[i][0] = x
    arr[i][1] = y
    arr[i][2] = z
}

Matrix *(%m *Matrix[T]) Matrix[T] {}

Matrix =(%m *Matrix[T]) {}

RotateMatrix[T Float](%alfa *int, %beta *int, %gamma *int) *Matrix[T] {}

ScaleMatrix[T Float](%v *int) *Matrix[T] {}

Main() {
    
}
