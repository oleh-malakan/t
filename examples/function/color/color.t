source "t-lib/std.t"

print(s string, r, g, b byte) {
    prev := std.SetColor(r, g, b)
    std.Print(s, "\n")
    std.SetColor(prev)
}