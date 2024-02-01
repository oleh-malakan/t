source "t-lib/std.t"

print(s string) {
    std.Print(s)
}

print("Hello, world!\n")

source "color/color.t"
color.Print("Hello, world!\n", 255, 255, 255)