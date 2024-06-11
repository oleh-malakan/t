QuickSort(arr []&comparable, left %int, right &int) {

}

Main() {
    arr :<- []int{3, 2, 1, 4, 5, 6, 7, 8, 9, 10}
    QuickSort(arr, 0, len(arr) - 1)
    ~arr
}
