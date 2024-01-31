main:
hello := "Hello, world!"

// The label variable parameter overrides the variable when the label is navigated
message(hello string):

source "github.com/oleh-malakan/t-lib/std.t"
std.Print(hello, "\n")