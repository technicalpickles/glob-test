// testing globs against using gobwas/glob
package main

import (
	"fmt"
	"os"

	"github.com/gobwas/glob"
)

func main() {
	if len(os.Args) < 3 {
		fmt.Printf("Usage: %s <glob> <filename>\n", os.Args[0])
		os.Exit(1)
	}

	globExpr := os.Args[1]
	filename := os.Args[2]

	g, err := glob.Compile(globExpr)
	if err != nil {
		fmt.Printf("Error compiling %q: %s\n", globExpr, err)
		os.Exit(1)
	}

	if g.Match(filename) {
		fmt.Printf("%q matches %q\n", filename, globExpr)
	} else {
		fmt.Printf("%q does not match %q\n", filename, globExpr)
	}
}
