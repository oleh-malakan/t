<github.com/oleh-malakan/t-lib/std>

#title "arch: "

Main() {
    std.Print(#hello, "\n")

    #switch t.arch {
    case "ARMv8/Aarch64":
        std.Print(#title, "ARMv8/Aarch64\n")
    case "x86_64":
        std.Print(#title, "x86_64\n")
    default:
        std.Print(#title, #t.arch, "\n")
    }
}