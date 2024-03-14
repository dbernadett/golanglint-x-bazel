package main

import (
	"fmt"
	"log"

	"example.com/go_hello/src/gopher"
)

// staticcheck won't like this
var notUsed string

func main() {
	s := []string{"a"}
	// staticcheck also won't like this
	if s != nil {
		for _, v := range s {
			log.Println(v)
		}
	}
	hello := fmt.Sprintf("Hello %s\n", gopher.Name())
	fmt.Printf(hello)
	_ = s
}
