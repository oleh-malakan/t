source "t-lib/std.t"

Print(s string, r, g, b byte) {
    prev := std.SetColor(r, g, b)
    std.Print(s)
    std.SetColor(prev)
}