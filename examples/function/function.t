source "t-lib/std.t"

print(s string) {
    std.Print(s, "\n")
}

print("Hello, world!")

source "color/color.t"
color.Print("Hello, world!", 255, 255, 255)