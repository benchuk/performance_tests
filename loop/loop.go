package main

import "fmt"
import "time"

func main() {
	sum := 0
	start := time.Now()
	for i := 0; i < 10000000; i++ {
		sum++
	}
	fmt.Println(sum)
	elapsed := time.Since(start)
	fmt.Printf("time %s",elapsed)
	//fmt.Printf("done")
}
