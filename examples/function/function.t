source "github.com/oleh-malakan/t-lib" std

print(s string) {
    std.Print(s)
}

print("Hello, world!\n")

source color/color
color.Print("Hello, world!\n", 255, 255, 255)