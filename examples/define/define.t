#t-lib "github.com/oleh-malakan/t-lib" std

source #t-lib
std.Print(#hello, "\n")

#title "arch: "

#switch t.arch {
case "ARM":
    std.Print(#title, "ARM\n")
case "RISC-V":
    std.Print(#title, "RISC-V\n")
case "x86_64":
    std.Print(#title, "x86_64\n")
default:
    std.Print(#title, #t.arch, "\n")
}