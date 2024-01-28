package main

import "flag"

func main() {
	binaryPath := flag.String("b", "", "binary file, b ./t.bin")
	outputPath := flag.String("o", "", "output, o ./t.uf2")
	flag.Parse()

	if len(*binaryPath) > 0 && len(*outputPath) > 0 {

	} else {
		flag.PrintDefaults()
	}
}
