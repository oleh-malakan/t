<github.com/oleh-malakan/t-lib/std>

Print(s string, r, g, b byte) {
    std.Color(r, g, b)
    std.Print(s)
}