source "github.com/oleh-malakan/t-lib/std.t"

std.Print(#hello, "\n")

#title "arch: "

#switch t.arch {
case "RISC-V":
    std.Print(#title, "RISC-V\n")
default:
    std.Print(#title, #t.arch, "\n")
}