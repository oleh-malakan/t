h := #env hello

source "github.com/oleh-malakan/t-lib/std.t"

std.Print(h, "\n")

#env t.arch {
case "RISC-V":
    std.Print("arch: RISC-V\n")
default:
    arch := #env t.arch
    std.Print("arch: ", arch, "\n")
}