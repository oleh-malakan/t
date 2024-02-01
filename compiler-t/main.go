package main

import (
	"io"
	"log"
	"os"
)

func main() {
	srcFile, err := os.OpenFile("../t.t", os.O_RDONLY, os.ModePerm)
	if err != nil {
		log.Fatal(err)
	}

	outFile, err := os.Create("../t.uf2")
	if err != nil {
		log.Fatal(err)
	}
	var outOffset int64
	output := []byte{
		0x55, 0x46, 0x32, 0x0A, 
		0x57, 0x51, 0x5D, 0x9E,
		0x00, 0x20, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		} 
	n, err := outFile.Write(output)
	if err != nil {
		log.Fatal(err)
	}
	outFile.Sync()
	outOffset += int64(n)

	b := make([]byte, 1024)
	var srcOffset int64
	for {
		n, err := srcFile.ReadAt(b, outOffset)
		if err != nil && err != io.EOF {
			log.Fatal(err)
		}

		if n == 0 {
			break
		}
		srcOffset += int64(n)

	}
}
