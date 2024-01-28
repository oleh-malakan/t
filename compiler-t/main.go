package main

import "flag"

func main() {
	sourcePath := flag.String("s", "", "source file, s ./t.t")
	outputPath := flag.String("o", "", "output, o ./t.bin")

	if len(*sourcePath) > 0 && len(*outputPath) > 0 {

	} else {
		flag.PrintDefaults()
	}
}
